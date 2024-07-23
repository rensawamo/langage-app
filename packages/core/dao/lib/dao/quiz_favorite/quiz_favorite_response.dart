import 'package:core_dao/json_serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_favorite_response.freezed.dart';
part 'quiz_favorite_response.g.dart';

/// [texts] 問題
/// [answers] 答え
/// [QuizFavoriteDao] のレスポンス
@freezed
class QuizFavoriteResponse
    with _$QuizFavoriteResponse
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizFavoriteResponse({
    required List<String> texts,
    required List<String> answers,
  }) = _QuizFavoriteResponse;

  factory QuizFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$QuizFavoriteResponseFromJson(json);
}
