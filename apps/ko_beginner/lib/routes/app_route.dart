import 'dart:io';

import 'package:core_model/api/quiz_get_all/topic_param.dart';
import 'package:core_views/screens/home/home.dart';
import 'package:core_views/screens/quiz/quiz.dart';
import 'package:core_views/screens/topic/topic.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:core_constants/constants.dart';
import 'package:ko_beginner/splash_page.dart';

class MyAppRoute {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: MyAppRouteConstraint.splashPageName,
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: SplashPage());
      },
    ),
    GoRoute(
      name: MyAppRouteConstraint.quizRouteName,
      path: '/question',
      pageBuilder: (context, state) {
        // 問題数を取得して QuizPageに渡す
        return MaterialPage(
            child: QuizPage(quizTopicType: state.extra as TopicParam));
      },
    ),
    GoRoute(
      name: MyAppRouteConstraint.homeRouteName,
      path: '/home',
      pageBuilder: (context, state) {
        return MaterialPage(child: HomePage());
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
        name: MyAppRouteConstraint.topicRouteName,
        path: '/topic',
        pageBuilder: (context, state) {
          return MaterialPage(child: TopicPage());
        }),
  ]);
}
