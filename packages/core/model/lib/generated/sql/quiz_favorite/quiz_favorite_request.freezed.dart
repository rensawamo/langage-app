// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../sql/quiz_favorite/quiz_favorite_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizFavoriteRequest _$QuizFavoriteRequestFromJson(Map<String, dynamic> json) {
  return _QuizFavoriteRequest.fromJson(json);
}

/// @nodoc
mixin _$QuizFavoriteRequest {
// 使用中のアプリのタイプ
  AppInstallType get appInstallType =>
      throw _privateConstructorUsedError; // トピックのタイプ
  QuizTopicType get quizTopicType =>
      throw _privateConstructorUsedError; // 取得数固定
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizFavoriteRequestCopyWith<QuizFavoriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizFavoriteRequestCopyWith<$Res> {
  factory $QuizFavoriteRequestCopyWith(
          QuizFavoriteRequest value, $Res Function(QuizFavoriteRequest) then) =
      _$QuizFavoriteRequestCopyWithImpl<$Res, QuizFavoriteRequest>;
  @useResult
  $Res call(
      {AppInstallType appInstallType,
      QuizTopicType quizTopicType,
      int pageSize});
}

/// @nodoc
class _$QuizFavoriteRequestCopyWithImpl<$Res, $Val extends QuizFavoriteRequest>
    implements $QuizFavoriteRequestCopyWith<$Res> {
  _$QuizFavoriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInstallType = null,
    Object? quizTopicType = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizFavoriteRequestImplCopyWith<$Res>
    implements $QuizFavoriteRequestCopyWith<$Res> {
  factory _$$QuizFavoriteRequestImplCopyWith(_$QuizFavoriteRequestImpl value,
          $Res Function(_$QuizFavoriteRequestImpl) then) =
      __$$QuizFavoriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppInstallType appInstallType,
      QuizTopicType quizTopicType,
      int pageSize});
}

/// @nodoc
class __$$QuizFavoriteRequestImplCopyWithImpl<$Res>
    extends _$QuizFavoriteRequestCopyWithImpl<$Res, _$QuizFavoriteRequestImpl>
    implements _$$QuizFavoriteRequestImplCopyWith<$Res> {
  __$$QuizFavoriteRequestImplCopyWithImpl(_$QuizFavoriteRequestImpl _value,
      $Res Function(_$QuizFavoriteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInstallType = null,
    Object? quizTopicType = null,
    Object? pageSize = null,
  }) {
    return _then(_$QuizFavoriteRequestImpl(
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$QuizFavoriteRequestImpl implements _QuizFavoriteRequest {
  const _$QuizFavoriteRequestImpl(
      {required this.appInstallType,
      required this.quizTopicType,
      required this.pageSize});

  factory _$QuizFavoriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizFavoriteRequestImplFromJson(json);

// 使用中のアプリのタイプ
  @override
  final AppInstallType appInstallType;
// トピックのタイプ
  @override
  final QuizTopicType quizTopicType;
// 取得数固定
  @override
  final int pageSize;

  @override
  String toString() {
    return 'QuizFavoriteRequest(appInstallType: $appInstallType, quizTopicType: $quizTopicType, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizFavoriteRequestImpl &&
            (identical(other.appInstallType, appInstallType) ||
                other.appInstallType == appInstallType) &&
            (identical(other.quizTopicType, quizTopicType) ||
                other.quizTopicType == quizTopicType) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appInstallType, quizTopicType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizFavoriteRequestImplCopyWith<_$QuizFavoriteRequestImpl> get copyWith =>
      __$$QuizFavoriteRequestImplCopyWithImpl<_$QuizFavoriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizFavoriteRequestImplToJson(
      this,
    );
  }
}

abstract class _QuizFavoriteRequest implements QuizFavoriteRequest {
  const factory _QuizFavoriteRequest(
      {required final AppInstallType appInstallType,
      required final QuizTopicType quizTopicType,
      required final int pageSize}) = _$QuizFavoriteRequestImpl;

  factory _QuizFavoriteRequest.fromJson(Map<String, dynamic> json) =
      _$QuizFavoriteRequestImpl.fromJson;

  @override // 使用中のアプリのタイプ
  AppInstallType get appInstallType;
  @override // トピックのタイプ
  QuizTopicType get quizTopicType;
  @override // 取得数固定
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$QuizFavoriteRequestImplCopyWith<_$QuizFavoriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
