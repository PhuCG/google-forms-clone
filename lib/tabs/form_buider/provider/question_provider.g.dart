// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questionNotifierHash() => r'f86dc8ec5d57195de0c6d04f53f51e5e9272d20b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$QuestionNotifier
    extends BuildlessAutoDisposeNotifier<QuestionState> {
  late final int questionId;
  late final Question question;

  QuestionState build(
    int questionId,
    Question question,
  );
}

/// See also [QuestionNotifier].
@ProviderFor(QuestionNotifier)
const questionNotifierProvider = QuestionNotifierFamily();

/// See also [QuestionNotifier].
class QuestionNotifierFamily extends Family<QuestionState> {
  /// See also [QuestionNotifier].
  const QuestionNotifierFamily();

  /// See also [QuestionNotifier].
  QuestionNotifierProvider call(
    int questionId,
    Question question,
  ) {
    return QuestionNotifierProvider(
      questionId,
      question,
    );
  }

  @override
  QuestionNotifierProvider getProviderOverride(
    covariant QuestionNotifierProvider provider,
  ) {
    return call(
      provider.questionId,
      provider.question,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'questionNotifierProvider';
}

/// See also [QuestionNotifier].
class QuestionNotifierProvider
    extends AutoDisposeNotifierProviderImpl<QuestionNotifier, QuestionState> {
  /// See also [QuestionNotifier].
  QuestionNotifierProvider(
    int questionId,
    Question question,
  ) : this._internal(
          () => QuestionNotifier()
            ..questionId = questionId
            ..question = question,
          from: questionNotifierProvider,
          name: r'questionNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questionNotifierHash,
          dependencies: QuestionNotifierFamily._dependencies,
          allTransitiveDependencies:
              QuestionNotifierFamily._allTransitiveDependencies,
          questionId: questionId,
          question: question,
        );

  QuestionNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.questionId,
    required this.question,
  }) : super.internal();

  final int questionId;
  final Question question;

  @override
  QuestionState runNotifierBuild(
    covariant QuestionNotifier notifier,
  ) {
    return notifier.build(
      questionId,
      question,
    );
  }

  @override
  Override overrideWith(QuestionNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestionNotifierProvider._internal(
        () => create()
          ..questionId = questionId
          ..question = question,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        questionId: questionId,
        question: question,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<QuestionNotifier, QuestionState>
      createElement() {
    return _QuestionNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestionNotifierProvider &&
        other.questionId == questionId &&
        other.question == question;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, questionId.hashCode);
    hash = _SystemHash.combine(hash, question.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuestionNotifierRef on AutoDisposeNotifierProviderRef<QuestionState> {
  /// The parameter `questionId` of this provider.
  int get questionId;

  /// The parameter `question` of this provider.
  Question get question;
}

class _QuestionNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<QuestionNotifier, QuestionState>
    with QuestionNotifierRef {
  _QuestionNotifierProviderElement(super.provider);

  @override
  int get questionId => (origin as QuestionNotifierProvider).questionId;
  @override
  Question get question => (origin as QuestionNotifierProvider).question;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
