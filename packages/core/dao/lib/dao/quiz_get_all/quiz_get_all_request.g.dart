// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizGetAllRequestImpl _$$QuizGetAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizGetAllRequestImpl(
      questionCount: (json['question_count'] as num).toInt(),
      language: json['language'] as String,
      quizTopicType:
          $enumDecode(_$QuizTopicTypeEnumMap, json['quiz_topic_type']),
    );

Map<String, dynamic> _$$QuizGetAllRequestImplToJson(
        _$QuizGetAllRequestImpl instance) =>
    <String, dynamic>{
      'question_count': instance.questionCount,
      'language': instance.language,
      'quiz_topic_type': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
    };

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.favorite: 'favorite',
  QuizTopicType.adjective: 'adjective',
  QuizTopicType.adverb: 'adverb',
  QuizTopicType.verb: 'verb',
  QuizTopicType.noun: 'noun',
  QuizTopicType.pronoun: 'pronoun',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
  QuizTopicType.total: 'total',
};
