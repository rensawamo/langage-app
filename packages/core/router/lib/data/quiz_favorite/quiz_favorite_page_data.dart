import 'package:core_enums/enums.dart';
import 'package:feature_quiz_favorite/quiz_favorite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// quiz page
class QuizFavoritePageData extends GoRouteData {
  const QuizFavoritePageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuizFavoritePage(
      dropDownMenu: {
        "名詞": QuizTopicType.noun,
        "動詞": QuizTopicType.verb,
        "形容詞": QuizTopicType.adjective,
        "副詞": QuizTopicType.adverb,
        "その他": QuizTopicType.greet,
      },
    );
  }
}
