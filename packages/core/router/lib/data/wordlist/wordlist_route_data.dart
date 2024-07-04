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
  const WordlistPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordListPage();
  }
}

class wordDetailPageData extends GoRouteData {
  const wordDetailPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WordDetailPage();
  }
}
