// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../api/quiz_get_all/quiz_get_all_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizGetAllRequest _$QuizGetAllRequestFromJson(Map<String, dynamic> json) {
  return _QuizGetAllRequest.fromJson(json);
}

/// @nodoc
mixin _$QuizGetAllRequest {
// 使用中のアプリのタイプ
  AppInstallType get appInstallType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizGetAllRequestCopyWith<QuizGetAllRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizGetAllRequestCopyWith<$Res> {
  factory $QuizGetAllRequestCopyWith(
          QuizGetAllRequest value, $Res Function(QuizGetAllRequest) then) =
      _$QuizGetAllRequestCopyWithImpl<$Res, QuizGetAllRequest>;
  @useResult
  $Res call({AppInstallType appInstallType});
}

/// @nodoc
class _$QuizGetAllRequestCopyWithImpl<$Res, $Val extends QuizGetAllRequest>
    implements $QuizGetAllRequestCopyWith<$Res> {
  _$QuizGetAllRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInstallType = null,
  }) {
    return _then(_value.copyWith(
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizGetAllRequestImplCopyWith<$Res>
    implements $QuizGetAllRequestCopyWith<$Res> {
  factory _$$QuizGetAllRequestImplCopyWith(_$QuizGetAllRequestImpl value,
          $Res Function(_$QuizGetAllRequestImpl) then) =
      __$$QuizGetAllRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppInstallType appInstallType});
}

/// @nodoc
class __$$QuizGetAllRequestImplCopyWithImpl<$Res>
    extends _$QuizGetAllRequestCopyWithImpl<$Res, _$QuizGetAllRequestImpl>
    implements _$$QuizGetAllRequestImplCopyWith<$Res> {
  __$$QuizGetAllRequestImplCopyWithImpl(_$QuizGetAllRequestImpl _value,
      $Res Function(_$QuizGetAllRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInstallType = null,
  }) {
    return _then(_$QuizGetAllRequestImpl(
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$QuizGetAllRequestImpl implements _QuizGetAllRequest {
  const _$QuizGetAllRequestImpl({required this.appInstallType});

  factory _$QuizGetAllRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizGetAllRequestImplFromJson(json);

// 使用中のアプリのタイプ
  @override
  final AppInstallType appInstallType;

  @override
  String toString() {
    return 'QuizGetAllRequest(appInstallType: $appInstallType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizGetAllRequestImpl &&
            (identical(other.appInstallType, appInstallType) ||
                other.appInstallType == appInstallType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appInstallType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizGetAllRequestImplCopyWith<_$QuizGetAllRequestImpl> get copyWith =>
      __$$QuizGetAllRequestImplCopyWithImpl<_$QuizGetAllRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizGetAllRequestImplToJson(
      this,
    );
  }
}

abstract class _QuizGetAllRequest implements QuizGetAllRequest {
  const factory _QuizGetAllRequest(
      {required final AppInstallType appInstallType}) = _$QuizGetAllRequestImpl;

  factory _QuizGetAllRequest.fromJson(Map<String, dynamic> json) =
      _$QuizGetAllRequestImpl.fromJson;

  @override // 使用中のアプリのタイプ
  AppInstallType get appInstallType;
  @override
  @JsonKey(ignore: true)
  _$$QuizGetAllRequestImplCopyWith<_$QuizGetAllRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
