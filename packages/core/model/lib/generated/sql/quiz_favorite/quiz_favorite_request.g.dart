// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../sql/quiz_favorite/quiz_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizFavoriteRequestImpl _$$QuizFavoriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizFavoriteRequestImpl(
      appInstallType:
          $enumDecode(_$AppInstallTypeEnumMap, json['app_install_type']),
      quizTopicType:
          $enumDecode(_$QuizTopicTypeEnumMap, json['quiz_topic_type']),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizFavoriteRequestImplToJson(
        _$QuizFavoriteRequestImpl instance) =>
    <String, dynamic>{
      'app_install_type': _$AppInstallTypeEnumMap[instance.appInstallType]!,
      'quiz_topic_type': _$QuizTopicTypeEnumMap[instance.quizTopicType]!,
      'page_size': instance.pageSize,
    };

const _$AppInstallTypeEnumMap = {
  AppInstallType.none: 'none',
  AppInstallType.koreanBeginner: 'koreanBeginner',
};

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.word: 'word',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
};
