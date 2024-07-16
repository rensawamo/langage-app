import 'package:core_foundation/foundation.dart';
import 'package:feature_wordlist/word_detail/word_detail_page.dart';
import 'package:feature_wordlist/word_topic_select/word_topic_select_page.dart';
import 'package:feature_wordlist/wordlist/word_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WordTopicPageData extends GoRouteData {
  const WordTopicPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordTopicSelectPage();
  }
}

class WordlistPageData extends GoRouteData {
  const WordlistPageData({
    required this.quizTopicType,
  });

  final QuizTopicType quizTopicType;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordListPage(
      quizTopicType: quizTopicType,
    );
  }
}

class wordDetailPageData extends GoRouteData {
  const wordDetailPageData(
    this.word, // 単語
    this.meaning, // 意味
    this.sentence, // 例文
    this.translation, // 翻訳
    this.pronunciation, // 発音
    this.isFavorite, // お気に入り

    this.quizTopicType,
  );
  final String word;
  final String meaning;
  final String sentence;
  final String translation;
  final String pronunciation;
  final bool isFavorite;
  final QuizTopicType quizTopicType;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordDetailPage(
      word: word,
      meaning: meaning,
      sentence: sentence,
      translation: translation,
      pronunciation: pronunciation,
      isFavorite: isFavorite,
      quizTopicType: quizTopicType,
    );
  }
}
