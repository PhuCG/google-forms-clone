import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

enum QuestionType { paragraph, multipleChoice }

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required QuestionType type,
    required String title,
    @Default([]) List<String> options,
    @Default(false) bool isRequired,
  }) = _Question;
}
