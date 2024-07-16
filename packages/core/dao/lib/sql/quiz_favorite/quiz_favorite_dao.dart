import 'package:core_dao/sql/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_dao/sql/quiz_favorite/quiz_favorite_response.dart';

import 'package:core_sql/sql.dart';

// クイズ のお気に入りの名詞  data アクセスクラス
class QuizFavoriteDao implements QuizFavoriteDaoInterface {
  @override
  Future<QuizFavoriteResponse> getFavoriteList(
      QuizFavoriteRequest request) async {
    print(request.quizTopicType.name);
    return QuizFavoriteResponse(
        texts: await QuizFavoriteSql.getTopicWords(
          request.quizTopicType.name,
        ),
        answers: await QuizFavoriteSql.getAllAnswers(
          request.quizTopicType.name,
        ));
  }
}

/// quiz お気に入り data アクセス インターフェース
abstract class QuizFavoriteDaoInterface {
  Future<QuizFavoriteResponse> getFavoriteList(QuizFavoriteRequest request);
}
