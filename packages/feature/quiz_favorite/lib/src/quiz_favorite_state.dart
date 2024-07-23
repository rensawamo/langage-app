
import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_favorite_state.freezed.dart';

@freezed
class QuizFavoriteState with _$QuizFavoriteState {
  /// コンストラクタ
  const factory QuizFavoriteState(
      {required List<String> quizzes,
      required List<String> answers,
      required List<bool> isHideAnswers,
      required ScrollController scrollController,
      required String selectDropDownValue,
      @Default(true) bool isLoading,

      /// セレクトボックスの値
      required QuizTopicType selectValue}) = _QuizFavoriteState;
}
