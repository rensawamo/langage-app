// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_get_all_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordGetAllRequest _$WordGetAllRequestFromJson(Map<String, dynamic> json) {
  return _WordGetAllRequest.fromJson(json);
}

/// @nodoc
mixin _$WordGetAllRequest {
// 使用中のアプリのタイプ
  QuizTopicType get quizTopicType => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordGetAllRequestCopyWith<WordGetAllRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordGetAllRequestCopyWith<$Res> {
  factory $WordGetAllRequestCopyWith(
          WordGetAllRequest value, $Res Function(WordGetAllRequest) then) =
      _$WordGetAllRequestCopyWithImpl<$Res, WordGetAllRequest>;
  @useResult
  $Res call(
      {QuizTopicType quizTopicType, String language, int page, int pageSize});
}

/// @nodoc
class _$WordGetAllRequestCopyWithImpl<$Res, $Val extends WordGetAllRequest>
    implements $WordGetAllRequestCopyWith<$Res> {
  _$WordGetAllRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTopicType = null,
    Object? language = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordGetAllRequestImplCopyWith<$Res>
    implements $WordGetAllRequestCopyWith<$Res> {
  factory _$$WordGetAllRequestImplCopyWith(_$WordGetAllRequestImpl value,
          $Res Function(_$WordGetAllRequestImpl) then) =
      __$$WordGetAllRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuizTopicType quizTopicType, String language, int page, int pageSize});
}

/// @nodoc
class __$$WordGetAllRequestImplCopyWithImpl<$Res>
    extends _$WordGetAllRequestCopyWithImpl<$Res, _$WordGetAllRequestImpl>
    implements _$$WordGetAllRequestImplCopyWith<$Res> {
  __$$WordGetAllRequestImplCopyWithImpl(_$WordGetAllRequestImpl _value,
      $Res Function(_$WordGetAllRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTopicType = null,
    Object? language = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$WordGetAllRequestImpl(
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WordGetAllRequestImpl implements _WordGetAllRequest {
  const _$WordGetAllRequestImpl(
      {required this.quizTopicType,
      required this.language,
      required this.page,
      required this.pageSize});

  factory _$WordGetAllRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordGetAllRequestImplFromJson(json);

// 使用中のアプリのタイプ
  @override
  final QuizTopicType quizTopicType;
  @override
  final String language;
  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'WordGetAllRequest(quizTopicType: $quizTopicType, language: $language, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordGetAllRequestImpl &&
            (identical(other.quizTopicType, quizTopicType) ||
                other.quizTopicType == quizTopicType) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quizTopicType, language, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordGetAllRequestImplCopyWith<_$WordGetAllRequestImpl> get copyWith =>
      __$$WordGetAllRequestImplCopyWithImpl<_$WordGetAllRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordGetAllRequestImplToJson(
      this,
    );
  }
}

abstract class _WordGetAllRequest implements WordGetAllRequest {
  const factory _WordGetAllRequest(
      {required final QuizTopicType quizTopicType,
      required final String language,
      required final int page,
      required final int pageSize}) = _$WordGetAllRequestImpl;

  factory _WordGetAllRequest.fromJson(Map<String, dynamic> json) =
      _$WordGetAllRequestImpl.fromJson;

  @override // 使用中のアプリのタイプ
  QuizTopicType get quizTopicType;
  @override
  String get language;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$WordGetAllRequestImplCopyWith<_$WordGetAllRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
