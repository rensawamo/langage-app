// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopicParam _$TopicParamFromJson(Map<String, dynamic> json) {
  return _TopicParam.fromJson(json);
}

/// @nodoc
mixin _$TopicParam {
  QuizTopicType get quizTopicType => throw _privateConstructorUsedError;
  int get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicParamCopyWith<TopicParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicParamCopyWith<$Res> {
  factory $TopicParamCopyWith(
          TopicParam value, $Res Function(TopicParam) then) =
      _$TopicParamCopyWithImpl<$Res, TopicParam>;
  @useResult
  $Res call({QuizTopicType quizTopicType, int extra});
}

/// @nodoc
class _$TopicParamCopyWithImpl<$Res, $Val extends TopicParam>
    implements $TopicParamCopyWith<$Res> {
  _$TopicParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTopicType = null,
    Object? extra = null,
  }) {
    return _then(_value.copyWith(
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicParamImplCopyWith<$Res>
    implements $TopicParamCopyWith<$Res> {
  factory _$$TopicParamImplCopyWith(
          _$TopicParamImpl value, $Res Function(_$TopicParamImpl) then) =
      __$$TopicParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizTopicType quizTopicType, int extra});
}

/// @nodoc
class __$$TopicParamImplCopyWithImpl<$Res>
    extends _$TopicParamCopyWithImpl<$Res, _$TopicParamImpl>
    implements _$$TopicParamImplCopyWith<$Res> {
  __$$TopicParamImplCopyWithImpl(
      _$TopicParamImpl _value, $Res Function(_$TopicParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTopicType = null,
    Object? extra = null,
  }) {
    return _then(_$TopicParamImpl(
      quizTopicType: null == quizTopicType
          ? _value.quizTopicType
          : quizTopicType // ignore: cast_nullable_to_non_nullable
              as QuizTopicType,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicParamImpl implements _TopicParam {
  const _$TopicParamImpl({required this.quizTopicType, required this.extra});

  factory _$TopicParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicParamImplFromJson(json);

  @override
  final QuizTopicType quizTopicType;
  @override
  final int extra;

  @override
  String toString() {
    return 'TopicParam(quizTopicType: $quizTopicType, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicParamImpl &&
            (identical(other.quizTopicType, quizTopicType) ||
                other.quizTopicType == quizTopicType) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quizTopicType, extra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicParamImplCopyWith<_$TopicParamImpl> get copyWith =>
      __$$TopicParamImplCopyWithImpl<_$TopicParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicParamImplToJson(
      this,
    );
  }
}

abstract class _TopicParam implements TopicParam {
  const factory _TopicParam(
      {required final QuizTopicType quizTopicType,
      required final int extra}) = _$TopicParamImpl;

  factory _TopicParam.fromJson(Map<String, dynamic> json) =
      _$TopicParamImpl.fromJson;

  @override
  QuizTopicType get quizTopicType;
  @override
  int get extra;
  @override
  @JsonKey(ignore: true)
  _$$TopicParamImplCopyWith<_$TopicParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
