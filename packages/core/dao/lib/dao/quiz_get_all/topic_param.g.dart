// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicParamImpl _$$TopicParamImplFromJson(Map<String, dynamic> json) =>
    _$TopicParamImpl(
      quizTopicType: $enumDecode(_$QuizTopicTypeEnumMap, json['quizTopicType']),
      extra: (json['extra'] as num).toInt(),
    );

Map<String, dynamic> _$$TopicParamImplToJson(_$TopicParamImpl instance) =>
    <String, dynamic>{
      'quizTopicType': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
      'extra': instance.extra,
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
};
