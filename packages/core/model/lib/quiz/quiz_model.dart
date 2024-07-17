
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class Quiz with _$Quiz  {
  const factory Quiz({
    // 単語
    required String text,
    // 答え
    String? answer,
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
class Option with _$Option  {
  const factory Option({
    required String text,
    @Default(false) bool isCorrect,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
