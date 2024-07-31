import 'package:flutter/foundation.dart';

/// integration test keys
/// E2Etest で使う widgetの識別 [Key] をまとめて管理するクラス
class AppKeys {
  AppKeys._();

  // bottom tab ber
  static const wordbar = Key('wordbar');
  static const quizbar = Key('quizbar');
  static const settingbar = Key('settingbar');

  // back button
  static const backButton = Key('backButton');

  // splash
  static const splash = Key('splash');

  // word topic screen
  // 形容詞
  static const wordAdjective = Key('wordAdjective');
  // 副詞
  static const wordAdverb = Key('wordAdverb');
  // 動詞
  static const wordVerb = Key('wordVerb');
  // 名詞
  static const wordNoun = Key('wordNoun');
  // 代名詞
  static const wordPronoun = Key('wordPronoun');
  // 挨拶
  static const wordGreeting = Key('wordGreeting');
  // お気に入り
  static const wordFavorite = Key('wordFavorite');
  // トピックリスト
  static const wordTopiclist = Key('wordTopiclist');

  // word list screen
  static const wordList = Key('wordList');
  static const wordListStar = Key('wordListStar');

  // word detail screen
  static const wordDetail = Key('wordDetail');

  ///  quiz screen
  // quiz topic screen
  // 形容詞
  static const quizAdjective = Key('quizAdjective');
  // 副詞
  static const quizAdverb = Key('quizAdverb');
  // 動詞
  static const quizVerb = Key('quizVerb');
  // 名詞
  static const quizNoun = Key('quizNoun');
  // 代名詞
  static const quizPronoun = Key('quizPronoun');
  // 挨拶
  static const quizGreeting = Key('quizGreeting');
  // トピックリスト
  static const quizTyles = Key('quizTyles');

  // quiz screen
  static const quiz = Key('quiz');
  static const quizNextButton = Key('quizNextButton');
  static const quizIndex = Key('quizIndex');
  static const quizResultPieChart = Key('quizResultPieChart');
  static const quizResultScore = Key('quizResultScore');
  static const quizResultPage = Key('quizResultPage');
  static const seeTable = Key('seeTable');
  static const goTopic = Key('goTopic');
  static const quizResultTable = Key('quizResultTable');

  static const quizResultRow1 = Key('quizResultRow1');
  static const quizResultRow2 = Key('quizResultRow2');
  static const quizResultRow3 = Key('quizResultRow3');

  static const quizStar = Key('quizStar');
}
