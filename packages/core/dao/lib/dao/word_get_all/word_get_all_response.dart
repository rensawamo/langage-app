
import 'package:core_dao/json_serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_get_all_response.freezed.dart';
part 'word_get_all_response.g.dart';

@freezed
class WordGetAllResponse
    with _$WordGetAllResponse
    implements JsonSerializableInterface {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WordGetAllResponse({
    required List<String> words,
    required List<String> answers,
    required List<String> sentences,
    required List<String> translations,
    required List<String> pronunciations,
    required List<bool> isFavorites,
  }) = _WordGetAllResponse;

  factory WordGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$WordGetAllResponseFromJson(json);
}
