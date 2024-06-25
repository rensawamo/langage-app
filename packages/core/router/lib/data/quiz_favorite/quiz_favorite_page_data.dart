import 'package:core_enums/enums.dart';
import 'package:feature_quiz_favorite/quiz_favorite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WordlistRouteData extends GoRouteData {
  const WordlistRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizFavoritePage(dropDownMenu: {
      '単語': QuizTopicType.noun,
      '挨拶': QuizTopicType.greet,
    });
  }
}
