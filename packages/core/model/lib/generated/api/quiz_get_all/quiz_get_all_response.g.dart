// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../api/quiz_get_all/quiz_get_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizGetAllResponseImpl _$$QuizGetAllResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizGetAllResponseImpl(
      quizes: (json['quizes'] as List<dynamic>)
          .map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizGetAllResponseImplToJson(
        _$QuizGetAllResponseImpl instance) =>
    <String, dynamic>{
      'quizes': instance.quizes,
    };

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      text: json['text'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLocked: json['isLocked'] as bool? ?? false,
      selectedOption: json['selectedOption'] == null
          ? null
          : Option.fromJson(json['selectedOption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'options': instance.options,
      'isLocked': instance.isLocked,
      'selectedOption': instance.selectedOption,
    };

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      text: json['text'] as String,
      isCorrect: json['isCorrect'] as bool? ?? false,
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
    };
