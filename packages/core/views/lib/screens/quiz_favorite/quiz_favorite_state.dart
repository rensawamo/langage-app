import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/screens/quiz_favorite/quiz_favorite_state.freezed.dart';

@freezed
class QuizFavoriteState with _$QuizFavoriteState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory QuizFavoriteState(
      {required List<String> quizzes,
      required List<String> answers,
      required List<bool> isFavorites,
      required ScrollController scrollController,
      required Function speak,

      /// セレクトボックスの値
      required QuizTopicType selectValue}) = _QuizFavoriteState;
}
