// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../dao/word_get_all/word_get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordGetAllRequestImpl _$$WordGetAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$WordGetAllRequestImpl(
      quizTopicType:
          $enumDecode(_$QuizTopicTypeEnumMap, json['quiz_topic_type']),
      page: (json['page'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$WordGetAllRequestImplToJson(
        _$WordGetAllRequestImpl instance) =>
    <String, dynamic>{
      'quiz_topic_type': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
      'page': instance.page,
      'page_size': instance.pageSize,
    };

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.favorite: 'favorite',
  QuizTopicType.noun: 'noun',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
};
