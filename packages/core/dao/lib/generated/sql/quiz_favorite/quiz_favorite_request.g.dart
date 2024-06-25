// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../sql/quiz_favorite/quiz_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizFavoriteRequestImpl _$$QuizFavoriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizFavoriteRequestImpl(
      quizTopicType:
          $enumDecode(_$QuizTopicTypeEnumMap, json['quiz_topic_type']),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizFavoriteRequestImplToJson(
        _$QuizFavoriteRequestImpl instance) =>
    <String, dynamic>{
      'quiz_topic_type': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
      'page_size': instance.pageSize,
    };

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.favorite: 'favorite',
  QuizTopicType.noun: 'noun',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
};
