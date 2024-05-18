
import 'package:core_model/json_serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/sql/quiz_favorite/quiz_favorite_response.freezed.dart';
part '../../generated/sql/quiz_favorite/quiz_favorite_response.g.dart';

///  RequestEntity
@freezed
class QuizFavoriteResponse
    with _$QuizFavoriteResponse
    implements JsonSerializableInterface {
  /// コンストラクタ
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizFavoriteResponse({
    //  トピックに応じた お気に入りの語句を返す
    required List<String> texts,
    required List<String> answers,
  }) = _QuizFavoriteResponse;

  factory QuizFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$QuizFavoriteResponseFromJson(json);
}
