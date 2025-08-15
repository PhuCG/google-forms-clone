import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/question.dart';

part 'question_state.freezed.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    required int id,
    required QuestionType type,
    required String title,
    @Default([]) List<String> options,
    @Default(false) bool isRequired,
    @Default('') String titleError,
    @Default([]) List<String> optionErrors,
  }) = _QuestionState;
}

extension QuestionStateExtension on QuestionState {
  Question toQuestion() {
    return Question(
      id: id,
      type: type,
      title: title,
      options: options,
      isRequired: isRequired,
    );
  }
}
