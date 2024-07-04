// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_get_all_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordGetAllResponse _$WordGetAllResponseFromJson(Map<String, dynamic> json) {
  return _WordGetAllResponse.fromJson(json);
}

/// @nodoc
mixin _$WordGetAllResponse {
  List<String> get words => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  List<bool> get isFavorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordGetAllResponseCopyWith<WordGetAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordGetAllResponseCopyWith<$Res> {
  factory $WordGetAllResponseCopyWith(
          WordGetAllResponse value, $Res Function(WordGetAllResponse) then) =
      _$WordGetAllResponseCopyWithImpl<$Res, WordGetAllResponse>;
  @useResult
  $Res call({List<String> words, List<String> answers, List<bool> isFavorites});
}

/// @nodoc
class _$WordGetAllResponseCopyWithImpl<$Res, $Val extends WordGetAllResponse>
    implements $WordGetAllResponseCopyWith<$Res> {
  _$WordGetAllResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? answers = null,
    Object? isFavorites = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordGetAllResponseImplCopyWith<$Res>
    implements $WordGetAllResponseCopyWith<$Res> {
  factory _$$WordGetAllResponseImplCopyWith(_$WordGetAllResponseImpl value,
          $Res Function(_$WordGetAllResponseImpl) then) =
      __$$WordGetAllResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> words, List<String> answers, List<bool> isFavorites});
}

/// @nodoc
class __$$WordGetAllResponseImplCopyWithImpl<$Res>
    extends _$WordGetAllResponseCopyWithImpl<$Res, _$WordGetAllResponseImpl>
    implements _$$WordGetAllResponseImplCopyWith<$Res> {
  __$$WordGetAllResponseImplCopyWithImpl(_$WordGetAllResponseImpl _value,
      $Res Function(_$WordGetAllResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? answers = null,
    Object? isFavorites = null,
  }) {
    return _then(_$WordGetAllResponseImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WordGetAllResponseImpl implements _WordGetAllResponse {
  const _$WordGetAllResponseImpl(
      {required final List<String> words,
      required final List<String> answers,
      required final List<bool> isFavorites})
      : _words = words,
        _answers = answers,
        _isFavorites = isFavorites;

  factory _$WordGetAllResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordGetAllResponseImplFromJson(json);

  final List<String> _words;
  @override
  List<String> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
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
  String toString() {
    return 'WordGetAllResponse(words: $words, answers: $answers, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordGetAllResponseImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_isFavorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordGetAllResponseImplCopyWith<_$WordGetAllResponseImpl> get copyWith =>
      __$$WordGetAllResponseImplCopyWithImpl<_$WordGetAllResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordGetAllResponseImplToJson(
      this,
    );
  }
}

abstract class _WordGetAllResponse implements WordGetAllResponse {
  const factory _WordGetAllResponse(
      {required final List<String> words,
      required final List<String> answers,
      required final List<bool> isFavorites}) = _$WordGetAllResponseImpl;

  factory _WordGetAllResponse.fromJson(Map<String, dynamic> json) =
      _$WordGetAllResponseImpl.fromJson;

  @override
  List<String> get words;
  @override
  List<String> get answers;
  @override
  List<bool> get isFavorites;
  @override
  @JsonKey(ignore: true)
  _$$WordGetAllResponseImplCopyWith<_$WordGetAllResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
