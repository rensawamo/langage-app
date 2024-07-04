import 'package:core_dao/json_serializable_interface.dart';
import 'package:core_enums/enums.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_get_all_request.freezed.dart';
part 'word_get_all_request.g.dart';

///  RequestEntity
@freezed
class WordGetAllRequest
    with _$WordGetAllRequest
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WordGetAllRequest({
    // 使用中のアプリのタイプ
    required QuizTopicType quizTopicType,
    required int page,
    required int pageSize,
  }) = _WordGetAllRequest;

  factory WordGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$WordGetAllRequestFromJson(json);
}
