import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/question.dart';
import 'state/form_state.dart';

part 'form_provider.g.dart';

@riverpod
class FormNotifier extends _$FormNotifier {
  @override
  FormState build() {
    return const FormState(
      questions: [],
      questionCounter: 1,
      formTitle: '',
      formDescription: '',
    );
  }

  void addQuestion(QuestionType type) {
    final questionId = state.questionCounter;
    final newQuestion = Question(
      id: questionId,
      type: type,
      title: "Câu hỏi không có tiêu đề",
      options: type == QuestionType.multipleChoice ? ["Tùy chọn 1"] : [],
      isRequired: false,
    );

    state = state.copyWith(
      questions: [...state.questions, newQuestion],
      questionCounter: questionId + 1,
    );
  }

  void removeQuestion(int id) {
    state = state.copyWith(
      questions: state.questions.where((q) => q.id != id).toList(),
    );
  }

  void updateFormTitle(String title) {
    state = state.copyWith(formTitle: title);
  }

  void updateFormDescription(String description) {
    state = state.copyWith(formDescription: description);
  }

  void updateQuestion(Question updatedQuestion) {
    final updatedQuestions =
        state.questions.map((q) {
          if (q.id == updatedQuestion.id) {
            return updatedQuestion;
          }
          return q;
        }).toList();

    state = state.copyWith(questions: updatedQuestions);
  }

  void saveForm() {
    // TODO: Implement form saving logic
    state = state.copyWith(isLoading: true);

    // Simulate saving
    Future.delayed(const Duration(seconds: 1), () {
      state = state.copyWith(isLoading: false);
    });
  }
}
