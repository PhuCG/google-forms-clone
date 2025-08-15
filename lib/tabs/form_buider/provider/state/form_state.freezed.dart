// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormState {
  List<Question> get questions => throw _privateConstructorUsedError;
  int get questionCounter => throw _privateConstructorUsedError;
  String get formTitle => throw _privateConstructorUsedError;
  String get formDescription => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormStateCopyWith<FormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res, FormState>;
  @useResult
  $Res call(
      {List<Question> questions,
      int questionCounter,
      String formTitle,
      String formDescription,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$FormStateCopyWithImpl<$Res, $Val extends FormState>
    implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? questionCounter = null,
    Object? formTitle = null,
    Object? formDescription = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionCounter: null == questionCounter
          ? _value.questionCounter
          : questionCounter // ignore: cast_nullable_to_non_nullable
              as int,
      formTitle: null == formTitle
          ? _value.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as String,
      formDescription: null == formDescription
          ? _value.formDescription
          : formDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormStateImplCopyWith<$Res>
    implements $FormStateCopyWith<$Res> {
  factory _$$FormStateImplCopyWith(
          _$FormStateImpl value, $Res Function(_$FormStateImpl) then) =
      __$$FormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Question> questions,
      int questionCounter,
      String formTitle,
      String formDescription,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$FormStateImplCopyWithImpl<$Res>
    extends _$FormStateCopyWithImpl<$Res, _$FormStateImpl>
    implements _$$FormStateImplCopyWith<$Res> {
  __$$FormStateImplCopyWithImpl(
      _$FormStateImpl _value, $Res Function(_$FormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? questionCounter = null,
    Object? formTitle = null,
    Object? formDescription = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$FormStateImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionCounter: null == questionCounter
          ? _value.questionCounter
          : questionCounter // ignore: cast_nullable_to_non_nullable
              as int,
      formTitle: null == formTitle
          ? _value.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as String,
      formDescription: null == formDescription
          ? _value.formDescription
          : formDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormStateImpl implements _FormState {
  const _$FormStateImpl(
      {final List<Question> questions = const [],
      this.questionCounter = 1,
      this.formTitle = '',
      this.formDescription = '',
      this.isLoading = false,
      this.errorMessage = ''})
      : _questions = questions;

  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int questionCounter;
  @override
  @JsonKey()
  final String formTitle;
  @override
  @JsonKey()
  final String formDescription;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'FormState(questions: $questions, questionCounter: $questionCounter, formTitle: $formTitle, formDescription: $formDescription, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.questionCounter, questionCounter) ||
                other.questionCounter == questionCounter) &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            (identical(other.formDescription, formDescription) ||
                other.formDescription == formDescription) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      questionCounter,
      formTitle,
      formDescription,
      isLoading,
      errorMessage);

  /// Create a copy of FormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStateImplCopyWith<_$FormStateImpl> get copyWith =>
      __$$FormStateImplCopyWithImpl<_$FormStateImpl>(this, _$identity);
}

abstract class _FormState implements FormState {
  const factory _FormState(
      {final List<Question> questions,
      final int questionCounter,
      final String formTitle,
      final String formDescription,
      final bool isLoading,
      final String errorMessage}) = _$FormStateImpl;

  @override
  List<Question> get questions;
  @override
  int get questionCounter;
  @override
  String get formTitle;
  @override
  String get formDescription;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of FormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStateImplCopyWith<_$FormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
