// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../sql/quiz_favorite/quiz_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizFavoriteResponse _$QuizFavoriteResponseFromJson(Map<String, dynamic> json) {
  return _QuizFavoriteResponse.fromJson(json);
}

/// @nodoc
mixin _$QuizFavoriteResponse {
//  トピックに応じた お気に入りの語句を返す
  List<String> get texts => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizFavoriteResponseCopyWith<QuizFavoriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizFavoriteResponseCopyWith<$Res> {
  factory $QuizFavoriteResponseCopyWith(QuizFavoriteResponse value,
          $Res Function(QuizFavoriteResponse) then) =
      _$QuizFavoriteResponseCopyWithImpl<$Res, QuizFavoriteResponse>;
  @useResult
  $Res call({List<String> texts, List<String> answers});
}

/// @nodoc
class _$QuizFavoriteResponseCopyWithImpl<$Res,
        $Val extends QuizFavoriteResponse>
    implements $QuizFavoriteResponseCopyWith<$Res> {
  _$QuizFavoriteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizFavoriteResponseImplCopyWith<$Res>
    implements $QuizFavoriteResponseCopyWith<$Res> {
  factory _$$QuizFavoriteResponseImplCopyWith(_$QuizFavoriteResponseImpl value,
          $Res Function(_$QuizFavoriteResponseImpl) then) =
      __$$QuizFavoriteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> texts, List<String> answers});
}

/// @nodoc
class __$$QuizFavoriteResponseImplCopyWithImpl<$Res>
    extends _$QuizFavoriteResponseCopyWithImpl<$Res, _$QuizFavoriteResponseImpl>
    implements _$$QuizFavoriteResponseImplCopyWith<$Res> {
  __$$QuizFavoriteResponseImplCopyWithImpl(_$QuizFavoriteResponseImpl _value,
      $Res Function(_$QuizFavoriteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
    Object? answers = null,
  }) {
    return _then(_$QuizFavoriteResponseImpl(
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$QuizFavoriteResponseImpl implements _QuizFavoriteResponse {
  const _$QuizFavoriteResponseImpl(
      {required final List<String> texts, required final List<String> answers})
      : _texts = texts,
        _answers = answers;

  factory _$QuizFavoriteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizFavoriteResponseImplFromJson(json);

//  トピックに応じた お気に入りの語句を返す
  final List<String> _texts;
//  トピックに応じた お気に入りの語句を返す
  @override
  List<String> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuizFavoriteResponse(texts: $texts, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizFavoriteResponseImpl &&
            const DeepCollectionEquality().equals(other._texts, _texts) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_texts),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizFavoriteResponseImplCopyWith<_$QuizFavoriteResponseImpl>
      get copyWith =>
          __$$QuizFavoriteResponseImplCopyWithImpl<_$QuizFavoriteResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizFavoriteResponseImplToJson(
      this,
    );
  }
}

abstract class _QuizFavoriteResponse implements QuizFavoriteResponse {
  const factory _QuizFavoriteResponse(
      {required final List<String> texts,
      required final List<String> answers}) = _$QuizFavoriteResponseImpl;

  factory _QuizFavoriteResponse.fromJson(Map<String, dynamic> json) =
      _$QuizFavoriteResponseImpl.fromJson;

  @override //  トピックに応じた お気に入りの語句を返す
  List<String> get texts;
  @override
  List<String> get answers;
  @override
  @JsonKey(ignore: true)
  _$$QuizFavoriteResponseImplCopyWith<_$QuizFavoriteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
