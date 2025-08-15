import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/question.dart';

part 'form_state.freezed.dart';

@freezed
class FormState with _$FormState {
  const factory FormState({
    @Default([]) List<Question> questions,
    @Default(1) int questionCounter,
    @Default('') String formTitle,
    @Default('') String formDescription,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _FormState;
}
