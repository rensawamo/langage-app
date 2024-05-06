
import 'package:core_views/screens/quiz/quiz.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:core_constants/constants.dart';

class MyAppRoute {
  GoRouter router = GoRouter(routes: [
    
    GoRoute(
      name: MyAppRouteConstraint.startPageName,
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: QuizPage());
      },
    ),
    GoRoute(
      name: MyAppRouteConstraint.questionRouteName,
      path: '/question',
      pageBuilder: (context, state) {
        return MaterialPage(child: QuizPage());
      },
    ),
    GoRoute(
      name: MyAppRouteConstraint.settingRouteName,
      path: '/setting',
      pageBuilder: (context, state) {
        return MaterialPage(child: Setting());
      },
    ),
    GoRoute(
        name: MyAppRouteConstraint.resultRouteName,
        path: '/result',
        pageBuilder: (context, state) {
          return MaterialPage(child: QuizPage());
        })

    
  ]);
}
