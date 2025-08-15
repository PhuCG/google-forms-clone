// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionState {
  int get id => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  String get titleError => throw _privateConstructorUsedError;
  List<String> get optionErrors => throw _privateConstructorUsedError;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call(
      {int id,
      QuestionType type,
      String title,
      List<String> options,
      bool isRequired,
      String titleError,
      List<String> optionErrors});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? options = null,
    Object? isRequired = null,
    Object? titleError = null,
    Object? optionErrors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      titleError: null == titleError
          ? _value.titleError
          : titleError // ignore: cast_nullable_to_non_nullable
              as String,
      optionErrors: null == optionErrors
          ? _value.optionErrors
          : optionErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionStateImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$QuestionStateImplCopyWith(
          _$QuestionStateImpl value, $Res Function(_$QuestionStateImpl) then) =
      __$$QuestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      QuestionType type,
      String title,
      List<String> options,
      bool isRequired,
      String titleError,
      List<String> optionErrors});
}

/// @nodoc
class __$$QuestionStateImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionStateImpl>
    implements _$$QuestionStateImplCopyWith<$Res> {
  __$$QuestionStateImplCopyWithImpl(
      _$QuestionStateImpl _value, $Res Function(_$QuestionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? options = null,
    Object? isRequired = null,
    Object? titleError = null,
    Object? optionErrors = null,
  }) {
    return _then(_$QuestionStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      titleError: null == titleError
          ? _value.titleError
          : titleError // ignore: cast_nullable_to_non_nullable
              as String,
      optionErrors: null == optionErrors
          ? _value._optionErrors
          : optionErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$QuestionStateImpl implements _QuestionState {
  const _$QuestionStateImpl(
      {required this.id,
      required this.type,
      required this.title,
      final List<String> options = const [],
      this.isRequired = false,
      this.titleError = '',
      final List<String> optionErrors = const []})
      : _options = options,
        _optionErrors = optionErrors;

  @override
  final int id;
  @override
  final QuestionType type;
  @override
  final String title;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final String titleError;
  final List<String> _optionErrors;
  @override
  @JsonKey()
  List<String> get optionErrors {
    if (_optionErrors is EqualUnmodifiableListView) return _optionErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionErrors);
  }

  @override
  String toString() {
    return 'QuestionState(id: $id, type: $type, title: $title, options: $options, isRequired: $isRequired, titleError: $titleError, optionErrors: $optionErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.titleError, titleError) ||
                other.titleError == titleError) &&
            const DeepCollectionEquality()
                .equals(other._optionErrors, _optionErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      const DeepCollectionEquality().hash(_options),
      isRequired,
      titleError,
      const DeepCollectionEquality().hash(_optionErrors));

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState(
      {required final int id,
      required final QuestionType type,
      required final String title,
      final List<String> options,
      final bool isRequired,
      final String titleError,
      final List<String> optionErrors}) = _$QuestionStateImpl;

  @override
  int get id;
  @override
  QuestionType get type;
  @override
  String get title;
  @override
  List<String> get options;
  @override
  bool get isRequired;
  @override
  String get titleError;
  @override
  List<String> get optionErrors;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
