
import 'package:core_dao/json_serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/api/word_get_all/word_get_all_response.freezed.dart';
part '../../generated/api/word_get_all/word_get_all_response.g.dart';

/// ResponseEntity
@freezed
class WordGetAllResponse
    with _$WordGetAllResponse
    implements JsonSerializableInterface {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WordGetAllResponse({
    required List<String> words,
    required List<String> answers,
    required List<bool> isFavorites,
  }) = _WordGetAllResponse;

  factory WordGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$WordGetAllResponseFromJson(json);
}
