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

  // total
  total,
}

extension QuizTopicTypeExtension on QuizTopicType {
  String get name {
    return this.toString().split('.').last;
  }

  String get japaneseName {
    switch (this) {
      case QuizTopicType.favorite:
        return 'お気に入り';
      case QuizTopicType.adjective:
        return '形容詞';
      case QuizTopicType.adverb:
        return '副詞';
      case QuizTopicType.verb:
        return '動詞';
      case QuizTopicType.noun:
        return '名詞';
      case QuizTopicType.pronoun:
        return '代名詞';
      case QuizTopicType.greet:
        return '挨拶';
      case QuizTopicType.proverb:
        return 'ことわざ';
      case QuizTopicType.phrase:
        return '連語';
      case QuizTopicType.total:
        return 'トータル';
      default:
        return '';
    }
  }
}
