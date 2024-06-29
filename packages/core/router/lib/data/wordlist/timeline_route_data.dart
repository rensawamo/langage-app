import 'package:core_enums/enums.dart';
import 'package:feature_wordlist/wordlist.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WordlistRouteData extends GoRouteData {
  const WordlistRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordListPage(
      dropDownMenu: {
      '名詞': QuizTopicType.noun,
      '形容詞'  : QuizTopicType.adjective,
      '動詞'  : QuizTopicType.verb,
      '副詞'  : QuizTopicType.adverb,
      '挨拶'  : QuizTopicType.greet,
    }
    );
  }
}