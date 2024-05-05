// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../api/quiz_get_all/quiz_get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizGetAllRequestImpl _$$QuizGetAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizGetAllRequestImpl(
      appInstallType:
          $enumDecode(_$AppInstallTypeEnumMap, json['app_install_type']),
    );

Map<String, dynamic> _$$QuizGetAllRequestImplToJson(
        _$QuizGetAllRequestImpl instance) =>
    <String, dynamic>{
      'app_install_type': _$AppInstallTypeEnumMap[instance.appInstallType]!,
    };

const _$AppInstallTypeEnumMap = {
  AppInstallType.koreanBeginner: 'koreanBeginner',
};
