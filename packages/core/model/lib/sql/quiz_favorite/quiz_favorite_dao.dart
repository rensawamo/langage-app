import 'package:core_enums/enums.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_response.dart';
import 'package:core_sql/sql.dart';

// クイズ のお気に入りの単語  data アクセスクラス
class QuizFavoriteDao implements QuizFavoriteDaoInterface {
  @override
  Future<QuizFavoriteResponse> getFavoriteList(
      QuizFavoriteRequest request) async {
    return QuizFavoriteResponse(
        texts: await QuizFavoriteSql.getAllWords(
            request.quizTopicType.name, request.appInstallType.name),
        answers: await QuizFavoriteSql.getAllAnswers(
            request.quizTopicType.name, request.appInstallType.name));
  }
}

/// quiz お気に入り data アクセス インターフェース
abstract class QuizFavoriteDaoInterface {
  Future<QuizFavoriteResponse> getFavoriteList(QuizFavoriteRequest request);
}
