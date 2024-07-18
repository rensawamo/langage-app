import 'package:core_dao/json_serializable_interface.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_get_all_response.freezed.dart';
part 'quiz_get_all_response.g.dart';

/// ResponseEntity
@freezed
class QuizGetAllResponse
    with _$QuizGetAllResponse
    implements JsonSerializableInterface {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory QuizGetAllResponse({
    required List<Quiz> quizes,
    required List<String> answers,
    required List<String> sentences,
    required List<String> translations,
    required List<String> pronunciations,
    required List<bool> isFavorites,
  }) = _QuizGetAllResponse;

  factory QuizGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$QuizGetAllResponseFromJson(json);
}
