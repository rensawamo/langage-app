import 'package:core_model/quiz/quiz_model.dart';

/// count 2 のtest [Quiz] データ
List<Quiz> quizTestData = <Quiz>[
  Quiz(
    text: "아버지",
    sentence: "아버지는 직장에서 일한다.",
    translation: "Father works at the office.",
    pronunciation: "abeoji",
    options: [
      Option(text: "Mother", isCorrect: false),
      Option(text: "Older brother", isCorrect: false),
      Option(text: "Older sister", isCorrect: false),
      Option(text: "Father", isCorrect: true),
    ],
  ),
  Quiz(
    text: "어머니",
    sentence: "어머니는 집에서 요리한다.",
    translation: "Mother cooks at home.",
    pronunciation: "eomeoni",
    options: [
      Option(text: "Father", isCorrect: false),
      Option(text: "Younger sister", isCorrect: false),
      Option(text: "Mother", isCorrect: true),
      Option(text: "Younger brother", isCorrect: false),
    ],
  ),
];
