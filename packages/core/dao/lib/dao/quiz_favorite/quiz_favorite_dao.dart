import 'package:core_dao/dao/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_dao/dao/quiz_favorite/quiz_favorite_response.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// クイズ のお気に入りの名詞  data アクセスクラス
class QuizFavoriteDaoImpl implements QuizFavoriteDao {
  final Ref ref;
  QuizFavoriteDaoImpl(this.ref);
  @override
  Future<QuizFavoriteResponse> getFavoriteList(
      QuizFavoriteRequest request) async {
    print(request.quizTopicType.name);
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    return QuizFavoriteResponse(
        texts: await quizFavoriteSql.getTopicWords(
          request.quizTopicType.name,
        ),
        answers: await quizFavoriteSql.getAllAnswers(
          request.quizTopicType.name,
        ));
  }
}

/// quiz お気に入り data アクセス インターフェース
abstract class QuizFavoriteDao {
  final Ref ref;
  QuizFavoriteDao(this.ref);
  Future<QuizFavoriteResponse> getFavoriteList(QuizFavoriteRequest request);
}
