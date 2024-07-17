// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_get_all_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizGetAllResponse _$QuizGetAllResponseFromJson(Map<String, dynamic> json) {
  return _QuizGetAllResponse.fromJson(json);
}

/// @nodoc
mixin _$QuizGetAllResponse {
  List<Quiz> get quizes => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  List<String> get sentences => throw _privateConstructorUsedError;
  List<String> get translations => throw _privateConstructorUsedError;
  List<String> get pronunciations => throw _privateConstructorUsedError;
  List<bool> get isFavorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizGetAllResponseCopyWith<QuizGetAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizGetAllResponseCopyWith<$Res> {
  factory $QuizGetAllResponseCopyWith(
          QuizGetAllResponse value, $Res Function(QuizGetAllResponse) then) =
      _$QuizGetAllResponseCopyWithImpl<$Res, QuizGetAllResponse>;
  @useResult
  $Res call(
      {List<Quiz> quizes,
      List<String> answers,
      List<String> sentences,
      List<String> translations,
      List<String> pronunciations,
      List<bool> isFavorites});
}

/// @nodoc
class _$QuizGetAllResponseCopyWithImpl<$Res, $Val extends QuizGetAllResponse>
    implements $QuizGetAllResponseCopyWith<$Res> {
  _$QuizGetAllResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizes = null,
    Object? answers = null,
    Object? sentences = null,
    Object? translations = null,
    Object? pronunciations = null,
    Object? isFavorites = null,
  }) {
    return _then(_value.copyWith(
      quizes: null == quizes
          ? _value.quizes
          : quizes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentences: null == sentences
          ? _value.sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pronunciations: null == pronunciations
          ? _value.pronunciations
          : pronunciations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizGetAllResponseImplCopyWith<$Res>
    implements $QuizGetAllResponseCopyWith<$Res> {
  factory _$$QuizGetAllResponseImplCopyWith(_$QuizGetAllResponseImpl value,
          $Res Function(_$QuizGetAllResponseImpl) then) =
      __$$QuizGetAllResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Quiz> quizes,
      List<String> answers,
      List<String> sentences,
      List<String> translations,
      List<String> pronunciations,
      List<bool> isFavorites});
}

/// @nodoc
class __$$QuizGetAllResponseImplCopyWithImpl<$Res>
    extends _$QuizGetAllResponseCopyWithImpl<$Res, _$QuizGetAllResponseImpl>
    implements _$$QuizGetAllResponseImplCopyWith<$Res> {
  __$$QuizGetAllResponseImplCopyWithImpl(_$QuizGetAllResponseImpl _value,
      $Res Function(_$QuizGetAllResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizes = null,
    Object? answers = null,
    Object? sentences = null,
    Object? translations = null,
    Object? pronunciations = null,
    Object? isFavorites = null,
  }) {
    return _then(_$QuizGetAllResponseImpl(
      quizes: null == quizes
          ? _value._quizes
          : quizes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentences: null == sentences
          ? _value._sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pronunciations: null == pronunciations
          ? _value._pronunciations
          : pronunciations // ignore: cast_nullable_to_non_nullable
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
class _$QuizGetAllResponseImpl implements _QuizGetAllResponse {
  const _$QuizGetAllResponseImpl(
      {required final List<Quiz> quizes,
      required final List<String> answers,
      required final List<String> sentences,
      required final List<String> translations,
      required final List<String> pronunciations,
      required final List<bool> isFavorites})
      : _quizes = quizes,
        _answers = answers,
        _sentences = sentences,
        _translations = translations,
        _pronunciations = pronunciations,
        _isFavorites = isFavorites;

  factory _$QuizGetAllResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizGetAllResponseImplFromJson(json);

  final List<Quiz> _quizes;
  @override
  List<Quiz> get quizes {
    if (_quizes is EqualUnmodifiableListView) return _quizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizes);
  }

  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<String> _sentences;
  @override
  List<String> get sentences {
    if (_sentences is EqualUnmodifiableListView) return _sentences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentences);
  }

  final List<String> _translations;
  @override
  List<String> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  final List<String> _pronunciations;
  @override
  List<String> get pronunciations {
    if (_pronunciations is EqualUnmodifiableListView) return _pronunciations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pronunciations);
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
    return 'QuizGetAllResponse(quizes: $quizes, answers: $answers, sentences: $sentences, translations: $translations, pronunciations: $pronunciations, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizGetAllResponseImpl &&
            const DeepCollectionEquality().equals(other._quizes, _quizes) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._sentences, _sentences) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            const DeepCollectionEquality()
                .equals(other._pronunciations, _pronunciations) &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizes),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_sentences),
      const DeepCollectionEquality().hash(_translations),
      const DeepCollectionEquality().hash(_pronunciations),
      const DeepCollectionEquality().hash(_isFavorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizGetAllResponseImplCopyWith<_$QuizGetAllResponseImpl> get copyWith =>
      __$$QuizGetAllResponseImplCopyWithImpl<_$QuizGetAllResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizGetAllResponseImplToJson(
      this,
    );
  }
}

abstract class _QuizGetAllResponse implements QuizGetAllResponse {
  const factory _QuizGetAllResponse(
      {required final List<Quiz> quizes,
      required final List<String> answers,
      required final List<String> sentences,
      required final List<String> translations,
      required final List<String> pronunciations,
      required final List<bool> isFavorites}) = _$QuizGetAllResponseImpl;

  factory _QuizGetAllResponse.fromJson(Map<String, dynamic> json) =
      _$QuizGetAllResponseImpl.fromJson;

  @override
  List<Quiz> get quizes;
  @override
  List<String> get answers;
  @override
  List<String> get sentences;
  @override
  List<String> get translations;
  @override
  List<String> get pronunciations;
  @override
  List<bool> get isFavorites;
  @override
  @JsonKey(ignore: true)
  _$$QuizGetAllResponseImplCopyWith<_$QuizGetAllResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
