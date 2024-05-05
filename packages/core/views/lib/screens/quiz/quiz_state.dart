import 'package:core_model/model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/screens/quiz/quiz_state.freezed.dart';


@freezed
class QuizState with _$QuizState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory QuizState({
    required List<Quiz> quizs,
    required PageController controller,
    @Default(0) int counter,
    @Default(false) bool selected,
    @Default(-1) int selectedInd,
    @Default(0) int totalScore,
    @Default(0) int gtotalScore,
  }) = _QuizState;
}
