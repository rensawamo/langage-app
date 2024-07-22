import 'package:core_designsystem/designsystem.dart';
import 'package:flutter/cupertino.dart';

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

  String getQuizTopicWord(BuildContext context) {
    switch (this) {
      case QuizTopicType.favorite:
        return AppLocalizations.of(context).star;
      case QuizTopicType.adjective:
        return AppLocalizations.of(context).adjective;
      case QuizTopicType.adverb:
        return AppLocalizations.of(context).adverb;
      case QuizTopicType.verb:
        return AppLocalizations.of(context).verb;
      case QuizTopicType.noun:
        return AppLocalizations.of(context).noun;
      case QuizTopicType.pronoun:
        return AppLocalizations.of(context).pronoun;
      case QuizTopicType.greet:
        return AppLocalizations.of(context).greet;
      case QuizTopicType.phrase:
        return '連語';
      case QuizTopicType.total:
        return 'トータル';
      default:
        return '';
    }
  }
}
