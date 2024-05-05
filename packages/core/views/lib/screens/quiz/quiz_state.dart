import 'package:core_model/model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/screens/quiz/quiz_state.freezed.dart';

/// Quize  状態クラス
@freezed
class QuizState with _$QuizState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory QuizState({
    required List<WordQuestionModel> quizs,
  }) = _QuizState;
}
