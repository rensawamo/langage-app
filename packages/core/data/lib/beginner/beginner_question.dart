import 'package:core_model/model.dart';

class AppQuizData {
  static final List<Quiz> korianBiginnerQuizes = [
    Quiz(
      text: "안녕",
      options: [
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "こんにちは", isCorrect: true),
        Option(text: "さようなら", isCorrect: false),
        Option(text: "おはようございます", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감사합니다",
      options: [
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "ありがとう", isCorrect: true),
        Option(text: "お願いします", isCorrect: false),
        Option(text: "さようなら", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과",
      options: [
        Option(text: "ぶどう", isCorrect: false),
        Option(text: "オレンジ", isCorrect: false),
        Option(text: "リンゴ", isCorrect: true),
        Option(text: "バナナ", isCorrect: false),
      ],
    ),
  ];
}
