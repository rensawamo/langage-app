import 'package:core_enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_list_state.freezed.dart';

@freezed
class WordListState with _$WordListState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory WordListState(
      {required List<String> quizzes,
      required List<String> answers,
      required List<bool> isFavorites,
      required int currentPage,

      /// All 表示にきりかえる
      required ScrollController scrollController,
      required String selectDropDownValue,
      required Function speak,

      /// セレクトボックスの値
      required QuizTopicType selectValue}) = _WordListState;
}
