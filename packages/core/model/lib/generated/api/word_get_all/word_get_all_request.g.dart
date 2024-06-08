// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../api/word_get_all/word_get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordGetAllRequestImpl _$$WordGetAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$WordGetAllRequestImpl(
      quizTopicType:
          $enumDecode(_$QuizTopicTypeEnumMap, json['quiz_topic_type']),
    );

Map<String, dynamic> _$$WordGetAllRequestImplToJson(
        _$WordGetAllRequestImpl instance) =>
    <String, dynamic>{
      'quiz_topic_type': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
    };

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.favorite: 'favorite',
  QuizTopicType.word: 'word',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
};
