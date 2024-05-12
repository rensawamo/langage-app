/// クイズのトピックタイプ
enum QuizTopicType {
  /// 単語
  word,

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
