// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../api/word_get_all/word_get_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordGetAllResponseImpl _$$WordGetAllResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WordGetAllResponseImpl(
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorites: (json['is_favorites'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
    );

Map<String, dynamic> _$$WordGetAllResponseImplToJson(
        _$WordGetAllResponseImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
      'answers': instance.answers,
      'is_favorites': instance.isFavorites,
    };
