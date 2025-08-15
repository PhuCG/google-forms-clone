import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'paragraph_question.dart';
import 'multiple_choice_question.dart';
import 'question_bottom_bar.dart';
import '../models/question.dart';
import '../provider/index.dart';

class QuestionCard extends ConsumerStatefulWidget {
  final Question question;
  final Function(int) onRemoveQuestion;
  final Function(int, QuestionType) onChangeQuestionType;
  final Function(int) onToggleRequired;

  const QuestionCard({
    super.key,
    required this.question,
    required this.onRemoveQuestion,
    required this.onChangeQuestionType,
    required this.onToggleRequired,
  });

  @override
  ConsumerState<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends ConsumerState<QuestionCard> {
  late TextEditingController _questionTitleController;
  late Map<int, TextEditingController> _optionControllers;

  @override
  void initState() {
    super.initState();
    _questionTitleController = TextEditingController(
      text: widget.question.title,
    );

    // Initialize option controllers
    _optionControllers = {};
    for (int i = 0; i < widget.question.options.length; i++) {
      _optionControllers[i] = TextEditingController(
        text: widget.question.options[i],
      );
    }
  }

  @override
  void dispose() {
    _questionTitleController.dispose();
    for (final controller in _optionControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _updateQuestionTitle(String value) {
    ref
        .read(
          questionNotifierProvider(
            widget.question.id,
            widget.question,
          ).notifier,
        )
        .updateTitle(value);
  }

  void _addOption() {
    ref
        .read(
          questionNotifierProvider(
            widget.question.id,
            widget.question,
          ).notifier,
        )
        .addOption();

    // Update local controllers
    setState(() {
      final questionState = ref.read(
        questionNotifierProvider(widget.question.id, widget.question),
      );
      final newIndex = questionState.options.length - 1;
      if (!_optionControllers.containsKey(newIndex)) {
        _optionControllers[newIndex] = TextEditingController(
          text: questionState.options[newIndex],
        );
      }
    });
  }

  void _removeOption(int optionIndex) {
    ref
        .read(
          questionNotifierProvider(
            widget.question.id,
            widget.question,
          ).notifier,
        )
        .removeOption(optionIndex);

    // Update local controllers
    setState(() {
      _optionControllers[optionIndex]?.dispose();
      _optionControllers.remove(optionIndex);

      // Reindex remaining controllers
      final newControllers = <int, TextEditingController>{};
      int newIndex = 0;
      for (int i = 0; i < widget.question.options.length; i++) {
        if (_optionControllers.containsKey(i)) {
          newControllers[newIndex] = _optionControllers[i]!;
          newIndex++;
        }
      }
      _optionControllers.clear();
      _optionControllers.addAll(newControllers);
    });
  }

  void _updateOption(int optionIndex, String value) {
    ref
        .read(
          questionNotifierProvider(
            widget.question.id,
            widget.question,
          ).notifier,
        )
        .updateOption(optionIndex, value);
  }

  void _addOtherOption() {
    ref
        .read(
          questionNotifierProvider(
            widget.question.id,
            widget.question,
          ).notifier,
        )
        .addOtherOption();

    // Update local controllers
    setState(() {
      final questionState = ref.read(
        questionNotifierProvider(widget.question.id, widget.question),
      );
      final newIndex = questionState.options.length - 1;
      if (!_optionControllers.containsKey(newIndex)) {
        _optionControllers[newIndex] = TextEditingController(
          text: questionState.options[newIndex],
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionState = ref.watch(
      questionNotifierProvider(widget.question.id, widget.question),
    );

    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Question Header
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _questionTitleController,
                    onChanged: _updateQuestionTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                // Drag Handle Icon (for future drag & drop functionality)
                Icon(Icons.drag_handle, color: Colors.grey[400], size: 20),
              ],
            ),

            const SizedBox(height: 16),

            // Question Type Selector
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey[300]!, width: 1),
              ),
              child: PopupMenuButton<QuestionType>(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      questionState.type == QuestionType.multipleChoice
                          ? Icons.radio_button_checked
                          : Icons.short_text,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(width: 8),
                    Text(
                      questionState.type == QuestionType.multipleChoice
                          ? "Trắc nghiệm"
                          : "Đoạn văn",
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
                onSelected: (QuestionType newType) {
                  widget.onChangeQuestionType(widget.question.id, newType);

                  // Handle controllers when changing question type
                  if (newType == QuestionType.multipleChoice &&
                      questionState.options.isEmpty) {
                    ref
                        .read(
                          questionNotifierProvider(
                            widget.question.id,
                            widget.question,
                          ).notifier,
                        )
                        .addOption();
                  } else if (newType == QuestionType.paragraph) {
                    // Clear option controllers for paragraph questions
                    for (final controller in _optionControllers.values) {
                      controller.dispose();
                    }
                    _optionControllers.clear();
                  }
                },
                itemBuilder:
                    (context) => [
                      PopupMenuItem(
                        value: QuestionType.multipleChoice,
                        child: Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked,
                              size: 16,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 8),
                            const Text("Trắc nghiệm"),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: QuestionType.paragraph,
                        child: Row(
                          children: [
                            Icon(
                              Icons.short_text,
                              size: 16,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 8),
                            const Text("Đoạn văn"),
                          ],
                        ),
                      ),
                    ],
              ),
            ),

            const SizedBox(height: 16),

            // Question Content
            if (questionState.type == QuestionType.paragraph)
              ParagraphQuestion()
            else
              MultipleChoiceQuestion(
                question: questionState,
                optionControllers: _optionControllers,
                onAddOption: (_) => _addOption(),
                onRemoveOption: (_, optionIndex) => _removeOption(optionIndex),
                onUpdateOption:
                    (_, optionIndex, value) =>
                        _updateOption(optionIndex, value),
                onAddOtherOption: (_) => _addOtherOption(),
              ),

            const SizedBox(height: 16),

            // Bottom Bar with Required Toggle
            QuestionBottomBar(
              question: questionState,
              onRemoveQuestion:
                  () => widget.onRemoveQuestion(widget.question.id),
              onToggleRequired:
                  () => widget.onToggleRequired(widget.question.id),
            ),
          ],
        ),
      ),
    );
  }
}
