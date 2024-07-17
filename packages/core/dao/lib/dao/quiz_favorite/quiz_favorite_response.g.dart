// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizFavoriteResponseImpl _$$QuizFavoriteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizFavoriteResponseImpl(
      texts: (json['texts'] as List<dynamic>).map((e) => e as String).toList(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuizFavoriteResponseImplToJson(
        _$QuizFavoriteResponseImpl instance) =>
    <String, dynamic>{
      'texts': instance.texts,
      'answers': instance.answers,
    };
