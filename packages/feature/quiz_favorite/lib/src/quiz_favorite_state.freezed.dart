// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizFavoriteState {
  List<String> get quizzes => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  /// 各単語を隠すか
  List<bool> get isHideAnswers => throw _privateConstructorUsedError;

  /// All 表示にきりかえる
  ScrollController get scrollController => throw _privateConstructorUsedError;
  String get selectDropDownValue => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// セレクトボックスの値
  QuizTopicType get selectValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizFavoriteStateCopyWith<QuizFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizFavoriteStateCopyWith<$Res> {
  factory $QuizFavoriteStateCopyWith(
          QuizFavoriteState value, $Res Function(QuizFavoriteState) then) =
      _$QuizFavoriteStateCopyWithImpl<$Res, QuizFavoriteState>;
  @useResult
  $Res call(
      {List<String> quizzes,
      List<String> answers,
      List<bool> isHideAnswers,
      ScrollController scrollController,
      String selectDropDownValue,
      bool isLoading,
      QuizTopicType selectValue});
}

/// @nodoc
class _$QuizFavoriteStateCopyWithImpl<$Res, $Val extends QuizFavoriteState>
    implements $QuizFavoriteStateCopyWith<$Res> {
  _$QuizFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
    Object? answers = null,
    Object? isHideAnswers = null,
    Object? scrollController = null,
    Object? selectDropDownValue = null,
    Object? isLoading = null,
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
      isHideAnswers: null == isHideAnswers
          ? _value.isHideAnswers
          : isHideAnswers // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      selectDropDownValue: null == selectDropDownValue
          ? _value.selectDropDownValue
          : selectDropDownValue // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizFavoriteStateImplCopyWith<$Res>
    implements $QuizFavoriteStateCopyWith<$Res> {
  factory _$$QuizFavoriteStateImplCopyWith(_$QuizFavoriteStateImpl value,
          $Res Function(_$QuizFavoriteStateImpl) then) =
      __$$QuizFavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> quizzes,
      List<String> answers,
      List<bool> isHideAnswers,
      ScrollController scrollController,
      String selectDropDownValue,
      bool isLoading,
      QuizTopicType selectValue});
}

/// @nodoc
class __$$QuizFavoriteStateImplCopyWithImpl<$Res>
    extends _$QuizFavoriteStateCopyWithImpl<$Res, _$QuizFavoriteStateImpl>
    implements _$$QuizFavoriteStateImplCopyWith<$Res> {
  __$$QuizFavoriteStateImplCopyWithImpl(_$QuizFavoriteStateImpl _value,
      $Res Function(_$QuizFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
    Object? answers = null,
    Object? isHideAnswers = null,
    Object? scrollController = null,
    Object? selectDropDownValue = null,
    Object? isLoading = null,
    Object? selectValue = null,
  }) {
    return _then(_$QuizFavoriteStateImpl(
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHideAnswers: null == isHideAnswers
          ? _value._isHideAnswers
          : isHideAnswers // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      selectDropDownValue: null == selectDropDownValue
          ? _value.selectDropDownValue
          : selectDropDownValue // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
    ));
  }
}

/// @nodoc

class _$QuizFavoriteStateImpl implements _QuizFavoriteState {
  const _$QuizFavoriteStateImpl(
      {required final List<String> quizzes,
      required final List<String> answers,
      required final List<bool> isHideAnswers,
      required this.scrollController,
      required this.selectDropDownValue,
      this.isLoading = true,
      required this.selectValue})
      : _quizzes = quizzes,
        _answers = answers,
        _isHideAnswers = isHideAnswers;

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

  /// 各単語を隠すか
  final List<bool> _isHideAnswers;

  /// 各単語を隠すか
  @override
  List<bool> get isHideAnswers {
    if (_isHideAnswers is EqualUnmodifiableListView) return _isHideAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isHideAnswers);
  }

  /// All 表示にきりかえる
  @override
  final ScrollController scrollController;
  @override
  final String selectDropDownValue;
  @override
  @JsonKey()
  final bool isLoading;

  /// セレクトボックスの値
  @override
  final QuizTopicType selectValue;

  @override
  String toString() {
    return 'QuizFavoriteState(quizzes: $quizzes, answers: $answers, isHideAnswers: $isHideAnswers, scrollController: $scrollController, selectDropDownValue: $selectDropDownValue, isLoading: $isLoading, selectValue: $selectValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizFavoriteStateImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._isHideAnswers, _isHideAnswers) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.selectDropDownValue, selectDropDownValue) ||
                other.selectDropDownValue == selectDropDownValue) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectValue, selectValue) ||
                other.selectValue == selectValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizzes),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_isHideAnswers),
      scrollController,
      selectDropDownValue,
      isLoading,
      selectValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizFavoriteStateImplCopyWith<_$QuizFavoriteStateImpl> get copyWith =>
      __$$QuizFavoriteStateImplCopyWithImpl<_$QuizFavoriteStateImpl>(
          this, _$identity);
}

abstract class _QuizFavoriteState implements QuizFavoriteState {
  const factory _QuizFavoriteState(
      {required final List<String> quizzes,
      required final List<String> answers,
      required final List<bool> isHideAnswers,
      required final ScrollController scrollController,
      required final String selectDropDownValue,
      final bool isLoading,
      required final QuizTopicType selectValue}) = _$QuizFavoriteStateImpl;

  @override
  List<String> get quizzes;
  @override
  List<String> get answers;
  @override

  /// 各単語を隠すか
  List<bool> get isHideAnswers;
  @override

  /// All 表示にきりかえる
  ScrollController get scrollController;
  @override
  String get selectDropDownValue;
  @override
  bool get isLoading;
  @override

  /// セレクトボックスの値
  QuizTopicType get selectValue;
  @override
  @JsonKey(ignore: true)
  _$$QuizFavoriteStateImplCopyWith<_$QuizFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
