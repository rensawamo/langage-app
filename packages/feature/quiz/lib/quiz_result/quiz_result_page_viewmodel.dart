import 'package:core_designsystem/designsystem.dart';
import 'package:feature_quiz/quiz_result/quiz_result_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [QuizResultPageViewmodel] のProvider

final quizReultPageProvider = StateNotifierProvider.autoDispose<
    QuizResultPageViewmodel, QuizResultPageState>(
  (ref) {
    return QuizResultPageViewmodelImpl(
      QuizResultPageState(
        isFavorites: [],
        scores: [],
        isLoading: false,
      ),
    );
  },
);

/// [QuizResultPageViewmodel] の具象クラス
class QuizResultPageViewmodelImpl extends QuizResultPageViewmodel {
  QuizResultPageViewmodelImpl(QuizResultPageState state) : super(state);
  @override
  Future<void> init(
      BuildContext context, List<bool?> scores, List<bool> isFavorite) async {
    state = state.copyWith(isLoading: true);

    // bool を String に変換
    List<String> ConvertedScores = scores.map((e) {
      if (e == null) {
        return AppLocalizations.of(context).noselect;
      } else if (e == true) {
        return AppLocalizations.of(context).correct;
      } else if (e == false) {
        return AppLocalizations.of(context).wrong;
      }
      return e.toString();
    }).toList();

    state = state.copyWith(
        scores: ConvertedScores, isFavorites: isFavorite, isLoading: false);
  }

  @override
  void updateFavorite(List<bool> isFavorite) {
    state = state.copyWith(isFavorites: isFavorite);
  }
}

/// [QuizResultPageState]を管理する抽象クラス
/// [isFavorite] でお気に入りの状態を管理
abstract class QuizResultPageViewmodel
    extends StateNotifier<QuizResultPageState> {
  QuizResultPageViewmodel(
    super.state,
  );
  late List<bool> isFavorite;

  // isFavoriteを List<bool> で受け取り、Stringに変換して state を更新
  Future<void> init(
      BuildContext context, List<bool?> scores, List<bool> isFavorite);

  // お気に入りの更新
  void updateFavorite(List<bool> isFavorite);
}
