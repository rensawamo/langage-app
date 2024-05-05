// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../screens/quiz/quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizState {
  List<Quiz> get quizs => throw _privateConstructorUsedError;
  PageController get controller => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  int get selectedInd => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;
  int get gtotalScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call(
      {List<Quiz> quizs,
      PageController controller,
      int counter,
      bool selected,
      int selectedInd,
      int totalScore,
      int gtotalScore});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizs = null,
    Object? controller = null,
    Object? counter = null,
    Object? selected = null,
    Object? selectedInd = null,
    Object? totalScore = null,
    Object? gtotalScore = null,
  }) {
    return _then(_value.copyWith(
      quizs: null == quizs
          ? _value.quizs
          : quizs // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedInd: null == selectedInd
          ? _value.selectedInd
          : selectedInd // ignore: cast_nullable_to_non_nullable
              as int,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      gtotalScore: null == gtotalScore
          ? _value.gtotalScore
          : gtotalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Quiz> quizs,
      PageController controller,
      int counter,
      bool selected,
      int selectedInd,
      int totalScore,
      int gtotalScore});
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizs = null,
    Object? controller = null,
    Object? counter = null,
    Object? selected = null,
    Object? selectedInd = null,
    Object? totalScore = null,
    Object? gtotalScore = null,
  }) {
    return _then(_$QuizStateImpl(
      quizs: null == quizs
          ? _value._quizs
          : quizs // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedInd: null == selectedInd
          ? _value.selectedInd
          : selectedInd // ignore: cast_nullable_to_non_nullable
              as int,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      gtotalScore: null == gtotalScore
          ? _value.gtotalScore
          : gtotalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizStateImpl implements _QuizState {
  const _$QuizStateImpl(
      {required final List<Quiz> quizs,
      required this.controller,
      this.counter = 0,
      this.selected = false,
      this.selectedInd = -1,
      this.totalScore = 0,
      this.gtotalScore = 0})
      : _quizs = quizs;

  final List<Quiz> _quizs;
  @override
  List<Quiz> get quizs {
    if (_quizs is EqualUnmodifiableListView) return _quizs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizs);
  }

  @override
  final PageController controller;
  @override
  @JsonKey()
  final int counter;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey()
  final int selectedInd;
  @override
  @JsonKey()
  final int totalScore;
  @override
  @JsonKey()
  final int gtotalScore;

  @override
  String toString() {
    return 'QuizState(quizs: $quizs, controller: $controller, counter: $counter, selected: $selected, selectedInd: $selectedInd, totalScore: $totalScore, gtotalScore: $gtotalScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            const DeepCollectionEquality().equals(other._quizs, _quizs) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.selectedInd, selectedInd) ||
                other.selectedInd == selectedInd) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.gtotalScore, gtotalScore) ||
                other.gtotalScore == gtotalScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizs),
      controller,
      counter,
      selected,
      selectedInd,
      totalScore,
      gtotalScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {required final List<Quiz> quizs,
      required final PageController controller,
      final int counter,
      final bool selected,
      final int selectedInd,
      final int totalScore,
      final int gtotalScore}) = _$QuizStateImpl;

  @override
  List<Quiz> get quizs;
  @override
  PageController get controller;
  @override
  int get counter;
  @override
  bool get selected;
  @override
  int get selectedInd;
  @override
  int get totalScore;
  @override
  int get gtotalScore;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
