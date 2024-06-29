import 'package:core_enums/enums.dart';

import 'package:feature_quiz_favorite/quiz_favorite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteRouteData extends GoRouteData {
  const FavoriteRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizFavoritePage(dropDownMenu: {
      '名詞': QuizTopicType.noun,
      '形容詞'  : QuizTopicType.adjective,
      '動詞'  : QuizTopicType.verb,
      '副詞'  : QuizTopicType.adverb,
      '挨拶'  : QuizTopicType.greet,
    });
  }
}
