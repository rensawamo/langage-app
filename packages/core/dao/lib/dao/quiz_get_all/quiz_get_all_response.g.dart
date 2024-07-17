// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_get_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizGetAllResponseImpl _$$QuizGetAllResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizGetAllResponseImpl(
      quizes: (json['quizes'] as List<dynamic>)
          .map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      sentences:
          (json['sentences'] as List<dynamic>).map((e) => e as String).toList(),
      translations: (json['translations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      pronunciations: (json['pronunciations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isFavorites: (json['is_favorites'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
    );

Map<String, dynamic> _$$QuizGetAllResponseImplToJson(
        _$QuizGetAllResponseImpl instance) =>
    <String, dynamic>{
      'quizes': instance.quizes,
      'answers': instance.answers,
      'sentences': instance.sentences,
      'translations': instance.translations,
      'pronunciations': instance.pronunciations,
      'is_favorites': instance.isFavorites,
    };
