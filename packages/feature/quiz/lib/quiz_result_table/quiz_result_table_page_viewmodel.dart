import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [QuizResultTablePageViewmodel]のProvider
final wordlistProvider = StateNotifierProvider.autoDispose<
    QuizResultTablePageViewmodel, QuizResultTablePageState>(
  (ref) {
    return QuizResultTablePageViewmodel(
        ref,
        QuizResultTablePageState(
          isFavorites: [],
        ));
  },
);

class QuizResultTablePageViewmodel extends StateNotifier<QuizResultTablePageState> {
  QuizResultTablePageViewmodel(this.ref, QuizResultTablePageState state)
      : super(state);

  final Ref ref;

  // 問題数
  late int questionCount;

  // トピックの種別
  late QuizTopicType quizTopicType;

  /// 初期設定
  Future<void> init(List<bool> isFavorite) async {
    state = state.copyWith(isFavorites: isFavorite);
  }

  /// お気に入りの更新
  void updateFavorite(
    int index,
    String text,
    String answer,
    String sentence,
    String translation,
    String pronunciation,
    QuizTopicType quizTopicType,
  ) async {
    // お気に入りの更新
    List<bool> isFavorites = List.from(state.isFavorites);
    state =
        state.copyWith(isFavorites: isFavorites..[index] = !isFavorites[index]);

    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

    if (state.isFavorites[index]) {
      await quizFavoriteSql.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      );
    } else {
      await quizFavoriteSql.delete(text);
    }
  }
}
