// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../screens/quiz_favorite/quiz_favorite_state.dart';

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
  List<bool> get isFavorites => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  Function get speak => throw _privateConstructorUsedError;

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
      List<bool> isFavorites,
      ScrollController scrollController,
      Function speak,
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
    Object? isFavorites = null,
    Object? scrollController = null,
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
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
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
      List<bool> isFavorites,
      ScrollController scrollController,
      Function speak,
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
    Object? isFavorites = null,
    Object? scrollController = null,
    Object? speak = null,
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
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
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

class _$QuizFavoriteStateImpl implements _QuizFavoriteState {
  const _$QuizFavoriteStateImpl(
      {required final List<String> quizzes,
      required final List<String> answers,
      required final List<bool> isFavorites,
      required this.scrollController,
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
  final ScrollController scrollController;
  @override
  final Function speak;

  /// セレクトボックスの値
  @override
  final QuizTopicType selectValue;

  @override
  String toString() {
    return 'QuizFavoriteState(quizzes: $quizzes, answers: $answers, isFavorites: $isFavorites, scrollController: $scrollController, speak: $speak, selectValue: $selectValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizFavoriteStateImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
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
      scrollController,
      speak,
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
      required final List<bool> isFavorites,
      required final ScrollController scrollController,
      required final Function speak,
      required final QuizTopicType selectValue}) = _$QuizFavoriteStateImpl;

  @override
  List<String> get quizzes;
  @override
  List<String> get answers;
  @override
  List<bool> get isFavorites;
  @override
  ScrollController get scrollController;
  @override
  Function get speak;
  @override

  /// セレクトボックスの値
  QuizTopicType get selectValue;
  @override
  @JsonKey(ignore: true)
  _$$QuizFavoriteStateImplCopyWith<_$QuizFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
