import 'package:core_dao/json_serializable_interface.dart';
import 'package:core_foundation/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'word_get_all_request.freezed.dart';
part 'word_get_all_request.g.dart';

/// [quizTopicType] クイズのトピック
/// [language] 言語
/// [page] ページ  data 取得の制限に使用
/// [pageSize] ページサイズ
@freezed
class WordGetAllRequest
    with _$WordGetAllRequest
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WordGetAllRequest({
    required QuizTopicType quizTopicType,
    required String language,
    required int page,
    required int pageSize,
  }) = _WordGetAllRequest;

  factory WordGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$WordGetAllRequestFromJson(json);
}
