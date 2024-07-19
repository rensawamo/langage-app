import 'package:core_dao/dao/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_dao/dao/quiz_favorite/quiz_favorite_response.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_favorite_dao.g.dart';

@riverpod
QuizFavoriteDao quizFavoriteDaoProvider(QuizFavoriteDaoProviderRef ref) {
  return QuizFavoriteDaoImpl(ref);
}

class QuizFavoriteDaoImpl implements QuizFavoriteDao {
  final Ref ref;
  QuizFavoriteDaoImpl(this.ref);

  @override
  Future<QuizFavoriteResponse> getFavoriteList(
      QuizFavoriteRequest request) async {
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    return QuizFavoriteResponse(
      texts: await quizFavoriteSql.getTopicWords(request.quizTopicType.name),
      answers: await quizFavoriteSql.getAllAnswers(request.quizTopicType.name),
    );
  }
}

abstract class QuizFavoriteDao {
  Future<QuizFavoriteResponse> getFavoriteList(QuizFavoriteRequest request);
}
