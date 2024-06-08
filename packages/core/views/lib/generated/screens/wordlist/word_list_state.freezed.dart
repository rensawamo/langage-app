// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../screens/wordlist/word_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WordListState {
  List<String> get quizzes => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  List<bool> get isFavorites => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// All 表示にきりかえる
  ScrollController get scrollController => throw _privateConstructorUsedError;
  String get selectDropDownValue => throw _privateConstructorUsedError;
  Function get speak => throw _privateConstructorUsedError;

  /// セレクトボックスの値
  QuizTopicType get selectValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordListStateCopyWith<WordListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordListStateCopyWith<$Res> {
  factory $WordListStateCopyWith(
          WordListState value, $Res Function(WordListState) then) =
      _$WordListStateCopyWithImpl<$Res, WordListState>;
  @useResult
  $Res call(
      {List<String> quizzes,
      List<String> answers,
      List<bool> isFavorites,
      int currentPage,
      ScrollController scrollController,
      String selectDropDownValue,
      Function speak,
      QuizTopicType selectValue});
}

/// @nodoc
class _$WordListStateCopyWithImpl<$Res, $Val extends WordListState>
    implements $WordListStateCopyWith<$Res> {
  _$WordListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
    Object? answers = null,
    Object? isFavorites = null,
    Object? currentPage = null,
    Object? scrollController = null,
    Object? selectDropDownValue = null,
    Object? speak = null,
    Object? selectValue = null,
  }) {
    return _then(_value.copyWith(
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      selectDropDownValue: null == selectDropDownValue
          ? _value.selectDropDownValue
          : selectDropDownValue // ignore: cast_nullable_to_non_nullable
              as String,
      speak: null == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as Function,
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordListStateImplCopyWith<$Res>
    implements $WordListStateCopyWith<$Res> {
  factory _$$WordListStateImplCopyWith(
          _$WordListStateImpl value, $Res Function(_$WordListStateImpl) then) =
      __$$WordListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> quizzes,
      List<String> answers,
      List<bool> isFavorites,
      int currentPage,
      ScrollController scrollController,
      String selectDropDownValue,
      Function speak,
      QuizTopicType selectValue});
}

/// @nodoc
class __$$WordListStateImplCopyWithImpl<$Res>
    extends _$WordListStateCopyWithImpl<$Res, _$WordListStateImpl>
    implements _$$WordListStateImplCopyWith<$Res> {
  __$$WordListStateImplCopyWithImpl(
      _$WordListStateImpl _value, $Res Function(_$WordListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
    Object? answers = null,
    Object? isFavorites = null,
    Object? currentPage = null,
    Object? scrollController = null,
    Object? selectDropDownValue = null,
    Object? speak = null,
    Object? selectValue = null,
  }) {
    return _then(_$WordListStateImpl(
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      selectDropDownValue: null == selectDropDownValue
          ? _value.selectDropDownValue
          : selectDropDownValue // ignore: cast_nullable_to_non_nullable
              as String,
      speak: null == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as Function,
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
    ));
  }
}

/// @nodoc

class _$WordListStateImpl implements _WordListState {
  const _$WordListStateImpl(
      {required final List<String> quizzes,
      required final List<String> answers,
      required final List<bool> isFavorites,
      required this.currentPage,
      required this.scrollController,
      required this.selectDropDownValue,
      required this.speak,
      required this.selectValue})
      : _quizzes = quizzes,
        _answers = answers,
        _isFavorites = isFavorites;

  final List<String> _quizzes;
  @override
  List<String> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<bool> _isFavorites;
  @override
  List<bool> get isFavorites {
    if (_isFavorites is EqualUnmodifiableListView) return _isFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavorites);
  }

  @override
  final int currentPage;

  /// All 表示にきりかえる
  @override
  final ScrollController scrollController;
  @override
  final String selectDropDownValue;
  @override
  final Function speak;

  /// セレクトボックスの値
  @override
  final QuizTopicType selectValue;

  @override
  String toString() {
    return 'WordListState(quizzes: $quizzes, answers: $answers, isFavorites: $isFavorites, currentPage: $currentPage, scrollController: $scrollController, selectDropDownValue: $selectDropDownValue, speak: $speak, selectValue: $selectValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordListStateImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.selectDropDownValue, selectDropDownValue) ||
                other.selectDropDownValue == selectDropDownValue) &&
            (identical(other.speak, speak) || other.speak == speak) &&
            (identical(other.selectValue, selectValue) ||
                other.selectValue == selectValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizzes),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_isFavorites),
      currentPage,
      scrollController,
      selectDropDownValue,
      speak,
      selectValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordListStateImplCopyWith<_$WordListStateImpl> get copyWith =>
      __$$WordListStateImplCopyWithImpl<_$WordListStateImpl>(this, _$identity);
}

abstract class _WordListState implements WordListState {
  const factory _WordListState(
      {required final List<String> quizzes,
      required final List<String> answers,
      required final List<bool> isFavorites,
      required final int currentPage,
      required final ScrollController scrollController,
      required final String selectDropDownValue,
      required final Function speak,
      required final QuizTopicType selectValue}) = _$WordListStateImpl;

  @override
  List<String> get quizzes;
  @override
  List<String> get answers;
  @override
  List<bool> get isFavorites;
  @override
  int get currentPage;
  @override

  /// All 表示にきりかえる
  ScrollController get scrollController;
  @override
  String get selectDropDownValue;
  @override
  Function get speak;
  @override

  /// セレクトボックスの値
  QuizTopicType get selectValue;
  @override
  @JsonKey(ignore: true)
  _$$WordListStateImplCopyWith<_$WordListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
