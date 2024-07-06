// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_get_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordGetAllResponseImpl _$$WordGetAllResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WordGetAllResponseImpl(
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
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

Map<String, dynamic> _$$WordGetAllResponseImplToJson(
        _$WordGetAllResponseImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
      'answers': instance.answers,
      'sentences': instance.sentences,
      'translations': instance.translations,
      'pronunciations': instance.pronunciations,
      'is_favorites': instance.isFavorites,
    };
