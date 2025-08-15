import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widgets/index.dart';
import 'provider/index.dart';
import 'models/question.dart';

class FormBuilder extends ConsumerStatefulWidget {
  const FormBuilder({super.key});

  @override
  ConsumerState<FormBuilder> createState() => _FormBuilderState();
}

class _FormBuilderState extends ConsumerState<FormBuilder> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Add initial question
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(formNotifierProvider.notifier)
          .addQuestion(QuestionType.multipleChoice);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _addQuestion(QuestionType type) {
    ref.read(formNotifierProvider.notifier).addQuestion(type);

    // Scroll to the bottom to show the new question
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _removeQuestion(int id) {
    ref.read(formNotifierProvider.notifier).removeQuestion(id);
  }

  void _changeQuestionType(int questionId, QuestionType newType) {
    final question = ref
        .read(formNotifierProvider)
        .questions
        .firstWhere((q) => q.id == questionId);
    ref
        .read(questionNotifierProvider(questionId, question).notifier)
        .updateType(newType);

    // Update the question in form state
    final updatedQuestion =
        ref.read(questionNotifierProvider(questionId, question)).toQuestion();
    ref.read(formNotifierProvider.notifier).updateQuestion(updatedQuestion);
  }

  void _toggleRequired(int questionId) {
    final question = ref
        .read(formNotifierProvider)
        .questions
        .firstWhere((q) => q.id == questionId);
    ref
        .read(questionNotifierProvider(questionId, question).notifier)
        .toggleRequired();

    // Update the question in form state
    final updatedQuestion =
        ref.read(questionNotifierProvider(questionId, question)).toQuestion();
    ref.read(formNotifierProvider.notifier).updateQuestion(updatedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(formNotifierProvider);

    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Form Header Card
            FormHeaderCard(
              onTitleChanged:
                  (title) => ref
                      .read(formNotifierProvider.notifier)
                      .updateFormTitle(title),
              onDescriptionChanged:
                  (description) => ref
                      .read(formNotifierProvider.notifier)
                      .updateFormDescription(description),
            ),
            const SizedBox(height: 16),

            // Questions
            ...formState.questions.map(
              (question) => QuestionCard(
                question: question,
                onRemoveQuestion: _removeQuestion,
                onChangeQuestionType: _changeQuestionType,
                onToggleRequired: _toggleRequired,
              ),
            ),

            const SizedBox(height: 32),

            // Add Question Buttons
            AddQuestionButtons(
              onAddQuestion: () => _addQuestion(QuestionType.multipleChoice),
              onSaveForm: () {
                ref.read(formNotifierProvider.notifier).saveForm();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form đã được lưu!')),
                );
              },
            ),

            const SizedBox(height: 100), // Bottom padding for FAB
          ],
        ),
      ),
    );
  }
}
