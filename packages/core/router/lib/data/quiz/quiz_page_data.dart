import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_enums/enums.dart';
import 'package:feature_quiz/quiz/quiz.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page.dart';
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
  final QuizTopicType topicParam;
  final int extra;
  const QuizPageData(
    this.topicParam,
    this.extra,
  );

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizPage(
        quizTopicType: TopicParam(quizTopicType: topicParam, extra: extra));
  }
}

// quiz result table page
class QuizResultTablePageData extends GoRouteData {
  final List<String> quizzes;
  final List<String> answers;
  final List<String> scores;
  final List<bool> isFavorites;
  final List<String> sentences;
  final List<String> translations;
  final List<String> pronunciations;
  final QuizTopicType topicType;

  const QuizResultTablePageData({
    this.quizzes = const [],
    this.answers = const [],
    this.scores = const [],
    this.isFavorites = const [],
    this.sentences = const [],
    this.translations = const [],
    this.pronunciations = const [],
    required this.topicType, // QuizTopicTypeのデフォルト値を設定
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizResultTablePage(
      quizzes: quizzes,
      answers: answers,
      scores: scores,
      isFavorites: isFavorites,
      sentences: sentences,
      translations: translations,
      pronunciations: pronunciations,
      topicType: topicType,
    );
  }
}
