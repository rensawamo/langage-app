import 'package:feature_quiz/quiz_result/quiz_result_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider
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

class QuizResultPageViewmodelImpl extends QuizResultPageViewmodel {
  QuizResultPageViewmodelImpl(QuizResultPageState state) : super(state);
  @override
  Future<void> init(List<bool?> scores, List<bool> isFavorite) async {
    state = state.copyWith(isLoading: true);
    List<String> ConvertedScores = scores.map((e) {
      if (e == null) {
        return "未回答";
      } else if (e == true) {
        return "正解";
      } else if (e == false) {
        return "不正解";
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

abstract class QuizResultPageViewmodel
    extends StateNotifier<QuizResultPageState> {
  QuizResultPageViewmodel(
    super.state,
  );
  late List<bool> isFavorite;
// 初期化
  Future<void> init(List<bool?> scores, List<bool> isFavorite);

  // お気に入りの更新

  void updateFavorite(List<bool> isFavorite);
}
