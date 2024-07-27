import 'package:flutter/foundation.dart';

/// integration test keys
/// E2Etest で使う widgetの識別 [Key] をまとめて管理するクラス
class AppKeys {
  AppKeys._();

  // back button
  static const backButton = Key('backButton');

  // splash
  static const splash = Key('splash');

  // word screen
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
}
