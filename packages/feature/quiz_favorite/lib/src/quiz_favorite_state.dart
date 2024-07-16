
import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_favorite_state.freezed.dart';

@freezed
class QuizFavoriteState with _$QuizFavoriteState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory QuizFavoriteState(
      {required List<String> quizzes,
      required List<String> answers,

      /// 各単語を隠すか
      required List<bool> isHideAnswers,

      /// All 表示にきりかえる
      required ScrollController scrollController,
      required String selectDropDownValue,
      required Function speak,
      @Default(true) bool isLoading,

      /// セレクトボックスの値
      required QuizTopicType selectValue}) = _QuizFavoriteState;
}
