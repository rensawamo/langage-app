// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WordDetailState {
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordDetailStateCopyWith<WordDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordDetailStateCopyWith<$Res> {
  factory $WordDetailStateCopyWith(
          WordDetailState value, $Res Function(WordDetailState) then) =
      _$WordDetailStateCopyWithImpl<$Res, WordDetailState>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class _$WordDetailStateCopyWithImpl<$Res, $Val extends WordDetailState>
    implements $WordDetailStateCopyWith<$Res> {
  _$WordDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordDetailStateImplCopyWith<$Res>
    implements $WordDetailStateCopyWith<$Res> {
  factory _$$WordDetailStateImplCopyWith(_$WordDetailStateImpl value,
          $Res Function(_$WordDetailStateImpl) then) =
      __$$WordDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$WordDetailStateImplCopyWithImpl<$Res>
    extends _$WordDetailStateCopyWithImpl<$Res, _$WordDetailStateImpl>
    implements _$$WordDetailStateImplCopyWith<$Res> {
  __$$WordDetailStateImplCopyWithImpl(
      _$WordDetailStateImpl _value, $Res Function(_$WordDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$WordDetailStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WordDetailStateImpl implements _WordDetailState {
  const _$WordDetailStateImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'WordDetailState(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordDetailStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordDetailStateImplCopyWith<_$WordDetailStateImpl> get copyWith =>
      __$$WordDetailStateImplCopyWithImpl<_$WordDetailStateImpl>(
          this, _$identity);
}

abstract class _WordDetailState implements WordDetailState {
  const factory _WordDetailState({required final bool isFavorite}) =
      _$WordDetailStateImpl;

  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$WordDetailStateImplCopyWith<_$WordDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
