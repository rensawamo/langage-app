// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      text: json['text'] as String,
      answer: json['answer'] as String?,
      sentence: json['sentence'] as String,
      translation: json['translation'] as String,
      pronunciation: json['pronunciation'] as String,
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
      'answer': instance.answer,
      'sentence': instance.sentence,
      'translation': instance.translation,
      'pronunciation': instance.pronunciation,
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
