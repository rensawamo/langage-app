import 'package:core_designsystem/designsystem.dart';
import 'package:core_utility/utility.dart';
import 'package:feature_quiz/quiz_result/quiz_result_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [QuizResultPageViewmodel] のProvider
final quizResultPageProvider = StateNotifierProvider.autoDispose<
    QuizResultPageViewmodel, QuizResultPageState>(
  (ref) {
    return QuizResultPageViewmodel(
      QuizResultPageState(
        isFavorites: [],
        scores: [],
        isLoading: false,
      ),
    );
  },
);

/// [QuizResultPageState] のを監視するViewmodel
class QuizResultPageViewmodel extends StateNotifier<QuizResultPageState> {
  QuizResultPageViewmodel(QuizResultPageState state) : super(state);

  late List<bool> isFavorites;

  Future<void> init(
      BuildContext context, List<bool?> scores, List<bool> isFavorite) async {
    state = state.copyWith(isLoading: true);

    // bool を String に変換
    List<String> convertedScores = scores.map((e) {
      if (e == null) {
        return AppLocalizations.of(context).noselect;
      } else if (e == true) {
        return AppLocalizations.of(context).correct;
      } else {
        return AppLocalizations.of(context).wrong;
      }
    }).toList();

    logger.i(convertedScores);

    state = state.copyWith(
        scores: convertedScores, isFavorites: isFavorite, isLoading: false);
  }

  void updateFavorite(List<bool> isFavorite) {
    state = state.copyWith(isFavorites: isFavorite);
  }
}
