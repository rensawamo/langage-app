import 'package:core_enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_param.freezed.dart';
part 'topic_param.g.dart';

/// トピックページで選択された問題の種類をDaoに渡すパラメータを定義するクラス
@freezed
class TopicParam with _$TopicParam {
  const factory TopicParam({
    required QuizTopicType quizTopicType,
    required int extra,
  }) = _TopicParam;

  factory TopicParam.fromJson(Map<String, dynamic> json) =>
      _$TopicParamFromJson(json);
}
