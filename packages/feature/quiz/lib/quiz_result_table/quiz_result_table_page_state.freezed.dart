// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result_table_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizResultTablePageState {
  List<bool> get isFavorites => throw _privateConstructorUsedError;
  Function get speak => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizResultTablePageStateCopyWith<QuizResultTablePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultTablePageStateCopyWith<$Res> {
  factory $QuizResultTablePageStateCopyWith(QuizResultTablePageState value,
          $Res Function(QuizResultTablePageState) then) =
      _$QuizResultTablePageStateCopyWithImpl<$Res, QuizResultTablePageState>;
  @useResult
  $Res call({List<bool> isFavorites, Function speak});
}

/// @nodoc
class _$QuizResultTablePageStateCopyWithImpl<$Res,
        $Val extends QuizResultTablePageState>
    implements $QuizResultTablePageStateCopyWith<$Res> {
  _$QuizResultTablePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorites = null,
    Object? speak = null,
  }) {
    return _then(_value.copyWith(
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      speak: null == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as Function,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResultTablePageStateImplCopyWith<$Res>
    implements $QuizResultTablePageStateCopyWith<$Res> {
  factory _$$QuizResultTablePageStateImplCopyWith(
          _$QuizResultTablePageStateImpl value,
          $Res Function(_$QuizResultTablePageStateImpl) then) =
      __$$QuizResultTablePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> isFavorites, Function speak});
}

/// @nodoc
class __$$QuizResultTablePageStateImplCopyWithImpl<$Res>
    extends _$QuizResultTablePageStateCopyWithImpl<$Res,
        _$QuizResultTablePageStateImpl>
    implements _$$QuizResultTablePageStateImplCopyWith<$Res> {
  __$$QuizResultTablePageStateImplCopyWithImpl(
      _$QuizResultTablePageStateImpl _value,
      $Res Function(_$QuizResultTablePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorites = null,
    Object? speak = null,
  }) {
    return _then(_$QuizResultTablePageStateImpl(
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      speak: null == speak
          ? _value.speak
          : speak // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$QuizResultTablePageStateImpl implements _QuizResultTablePageState {
  const _$QuizResultTablePageStateImpl(
      {required final List<bool> isFavorites, required this.speak})
      : _isFavorites = isFavorites;

  final List<bool> _isFavorites;
  @override
  List<bool> get isFavorites {
    if (_isFavorites is EqualUnmodifiableListView) return _isFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavorites);
  }

  @override
  final Function speak;

  @override
  String toString() {
    return 'QuizResultTablePageState(isFavorites: $isFavorites, speak: $speak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResultTablePageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites) &&
            (identical(other.speak, speak) || other.speak == speak));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_isFavorites), speak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultTablePageStateImplCopyWith<_$QuizResultTablePageStateImpl>
      get copyWith => __$$QuizResultTablePageStateImplCopyWithImpl<
          _$QuizResultTablePageStateImpl>(this, _$identity);
}

abstract class _QuizResultTablePageState implements QuizResultTablePageState {
  const factory _QuizResultTablePageState(
      {required final List<bool> isFavorites,
      required final Function speak}) = _$QuizResultTablePageStateImpl;

  @override
  List<bool> get isFavorites;
  @override
  Function get speak;
  @override
  @JsonKey(ignore: true)
  _$$QuizResultTablePageStateImplCopyWith<_$QuizResultTablePageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
