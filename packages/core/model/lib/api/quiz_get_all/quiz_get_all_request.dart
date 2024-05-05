import 'package:core_enums/enums.dart';
import 'package:core_model/api/json_serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/api/quiz_get_all/quiz_get_all_request.freezed.dart';
 part '../../generated/api/quiz_get_all/quiz_get_all_request.g.dart';

/// 受診予約一覧取得（過去分含む）のRequestEntity
@freezed
class QuizGetAllRequest
    with _$QuizGetAllRequest
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizGetAllRequest({
    // 使用中のアプリのタイプ
    required AppInstallType appInstallType,
  }) = _QuizGetAllRequest;

  factory QuizGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizGetAllRequestFromJson(json);
}
