import 'package:core_dao/json_serializable_interface.dart';
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
    required List<bool> isFavorites,
  }) = _QuizGetAllResponse;

  factory QuizGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$QuizGetAllResponseFromJson(json);
}

@freezed
class Quiz with _$Quiz implements JsonSerializableInterface {
  const factory Quiz({
    // 単語
    required String text,
    // 例文
    required String sentence,
    // 例文の翻訳
    required String translation ,
    // 発音
    required String pronunciation,
    required List<Option> options,
    @Default(false) bool isLocked,
    Option? selectedOption,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

@freezed
class Option with _$Option implements JsonSerializableInterface {
  const factory Option({
    required String text,
    @Default(false) bool isCorrect,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
