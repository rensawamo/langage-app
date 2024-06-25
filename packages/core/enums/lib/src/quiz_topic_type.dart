/// クイズのトピックタイプ
enum QuizTopicType {
  /// お気に入り
  favorite,

  // 形容詞
  adjective,

  // 副詞
  adverb,

  // 動詞
  verb,

  // 名詞
  noun,

  // 代名詞
  pronoun,

  /// 挨拶
  greet,

  // ことわざ
  proverb,

  // 連語
  phrase,
}

extension QuizTopicTypeExtension on QuizTopicType {
  String get name {
    return this.toString().split('.').last;
  }
}
