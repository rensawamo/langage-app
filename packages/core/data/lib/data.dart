import 'package:core_model/model.dart';

class AppQuizData {
  static final List<Quiz> korianBiginnerQuizes = [
    Quiz(
      text: "What should you do when approaching a yellow traffic light?",
      options: [
        Option(
            text: "Speed up and cross the intersection quickly",
            isCorrect: false),
        Option(text: "Come to a complete stop", isCorrect: false),
        Option(text: "Slow down and prepare to stop", isCorrect: true),
        Option(text: "Ignore the light and continue driving", isCorrect: false),
      ],
    ),
    Quiz(
      text: "What does a red octagonal sign indicate?",
      options: [
        Option(text: "Yield right of way", isCorrect: false),
        Option(text: "Stop and proceed when safe", isCorrect: true),
        Option(text: "Merge with traffic", isCorrect: false),
        Option(text: "No left turn allowed", isCorrect: false),
      ],
    ),
    Quiz(
      text: "What is the purpose of a crosswalk?",
      options: [
        Option(text: "A designated area for parking", isCorrect: false),
        Option(text: "A place to stop and rest", isCorrect: false),
        Option(
            text: "A path for pedestrians to cross the road", isCorrect: true),
        Option(text: "A location for U-turns", isCorrect: false),
      ],
    ),
  ];
}
