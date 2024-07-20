// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizResultPageState {
  List<bool> get isFavorites => throw _privateConstructorUsedError;
  List<String> get scores => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizResultPageStateCopyWith<QuizResultPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultPageStateCopyWith<$Res> {
  factory $QuizResultPageStateCopyWith(
          QuizResultPageState value, $Res Function(QuizResultPageState) then) =
      _$QuizResultPageStateCopyWithImpl<$Res, QuizResultPageState>;
  @useResult
  $Res call({List<bool> isFavorites, List<String> scores, bool isLoading});
}

/// @nodoc
class _$QuizResultPageStateCopyWithImpl<$Res, $Val extends QuizResultPageState>
    implements $QuizResultPageStateCopyWith<$Res> {
  _$QuizResultPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorites = null,
    Object? scores = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResultPageStateImplCopyWith<$Res>
    implements $QuizResultPageStateCopyWith<$Res> {
  factory _$$QuizResultPageStateImplCopyWith(_$QuizResultPageStateImpl value,
          $Res Function(_$QuizResultPageStateImpl) then) =
      __$$QuizResultPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> isFavorites, List<String> scores, bool isLoading});
}

/// @nodoc
class __$$QuizResultPageStateImplCopyWithImpl<$Res>
    extends _$QuizResultPageStateCopyWithImpl<$Res, _$QuizResultPageStateImpl>
    implements _$$QuizResultPageStateImplCopyWith<$Res> {
  __$$QuizResultPageStateImplCopyWithImpl(_$QuizResultPageStateImpl _value,
      $Res Function(_$QuizResultPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorites = null,
    Object? scores = null,
    Object? isLoading = null,
  }) {
    return _then(_$QuizResultPageStateImpl(
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuizResultPageStateImpl implements _QuizResultPageState {
  const _$QuizResultPageStateImpl(
      {required final List<bool> isFavorites,
      required final List<String> scores,
      required this.isLoading})
      : _isFavorites = isFavorites,
        _scores = scores;

  final List<bool> _isFavorites;
  @override
  List<bool> get isFavorites {
    if (_isFavorites is EqualUnmodifiableListView) return _isFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavorites);
  }

  final List<String> _scores;
  @override
  List<String> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'QuizResultPageState(isFavorites: $isFavorites, scores: $scores, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResultPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_isFavorites),
      const DeepCollectionEquality().hash(_scores),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultPageStateImplCopyWith<_$QuizResultPageStateImpl> get copyWith =>
      __$$QuizResultPageStateImplCopyWithImpl<_$QuizResultPageStateImpl>(
          this, _$identity);
}

abstract class _QuizResultPageState implements QuizResultPageState {
  const factory _QuizResultPageState(
      {required final List<bool> isFavorites,
      required final List<String> scores,
      required final bool isLoading}) = _$QuizResultPageStateImpl;

  @override
  List<bool> get isFavorites;
  @override
  List<String> get scores;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$QuizResultPageStateImplCopyWith<_$QuizResultPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
