import 'package:feature_home/home.dart';
import 'package:feature_quiz_select/quiz_select.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizSelectPageData extends GoRouteData {
  const QuizSelectPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizSelectPage();
  }
}
