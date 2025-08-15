import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/question.dart';
import 'state/question_state.dart';

part 'question_provider.g.dart';

@riverpod
class QuestionNotifier extends _$QuestionNotifier {
  @override
  QuestionState build(int questionId, Question question) {
    return QuestionState(
      id: question.id,
      type: question.type,
      title: question.title,
      options: question.options,
      isRequired: question.isRequired,
    );
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updateType(QuestionType type) {
    state = state.copyWith(
      type: type,
      options: type == QuestionType.multipleChoice ? ["Tùy chọn 1"] : [],
    );
  }

  void addOption() {
    if (state.type == QuestionType.multipleChoice) {
      final newOptions = [
        ...state.options,
        "Tùy chọn ${state.options.length + 1}",
      ];
      state = state.copyWith(options: newOptions);
    }
  }

  void removeOption(int index) {
    if (state.type == QuestionType.multipleChoice &&
        index < state.options.length &&
        state.options[index] != "Khác...") {
      final newOptions = List<String>.from(state.options);
      newOptions.removeAt(index);
      state = state.copyWith(options: newOptions);
    }
  }

  void updateOption(int index, String value) {
    if (state.type == QuestionType.multipleChoice &&
        index < state.options.length &&
        state.options[index] != "Khác...") {
      final newOptions = List<String>.from(state.options);
      newOptions[index] = value;
      state = state.copyWith(options: newOptions);
    }
  }

  void addOtherOption() {
    if (state.type == QuestionType.multipleChoice &&
        !state.options.contains("Khác...")) {
      final newOptions = [...state.options, "Khác..."];
      state = state.copyWith(options: newOptions);
    }
  }

  void toggleRequired() {
    state = state.copyWith(isRequired: !state.isRequired);
  }

  Question toQuestion() {
    return Question(
      id: state.id,
      type: state.type,
      title: state.title,
      options: state.options,
      isRequired: state.isRequired,
    );
  }
}
