import 'package:core_dao/json_serializable_interface.dart';
import 'package:core_foundation/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_favorite_request.freezed.dart';
part 'quiz_favorite_request.g.dart';

///  RequestEntity
@freezed
class QuizFavoriteRequest
    with _$QuizFavoriteRequest
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizFavoriteRequest({
 
    // トピックのタイプ
    required QuizTopicType quizTopicType,

    // 取得数固定
    required int pageSize,
  }) = _QuizFavoriteRequest;

  factory QuizFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizFavoriteRequestFromJson(json);
}
