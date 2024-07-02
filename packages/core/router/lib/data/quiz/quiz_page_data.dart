import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_enums/enums.dart';
import 'package:feature_quiz/quiz/quiz.dart';
import 'package:feature_quiz/quiz_select/quiz_select_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizSelectPageData extends GoRouteData {
  const QuizSelectPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizSelectPage();
  }
}

// quiz page
class QuizPageData extends GoRouteData {
  const QuizPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizPage(
        quizTopicType:
            TopicParam(quizTopicType: QuizTopicType.noun, extra: 10));
  }
}
