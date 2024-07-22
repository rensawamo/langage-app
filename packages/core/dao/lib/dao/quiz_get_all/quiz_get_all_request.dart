import 'package:core_dao/json_serializable_interface.dart';
import 'package:core_foundation/foundation.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_get_all_request.freezed.dart';
part 'quiz_get_all_request.g.dart';

///  RequestEntity
@freezed
class QuizGetAllRequest
    with _$QuizGetAllRequest
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizGetAllRequest({
    // 使用中のアプリのタイプ
    required int questionCount,
    required String language,
    required QuizTopicType quizTopicType,
  }) = _QuizGetAllRequest;

  factory QuizGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizGetAllRequestFromJson(json);
}
