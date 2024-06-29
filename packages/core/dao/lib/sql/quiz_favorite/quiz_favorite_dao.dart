import 'package:core_dao/sql/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_dao/sql/quiz_favorite/quiz_favorite_response.dart';
import 'package:core_enums/enums.dart';


import 'package:core_sql/sql.dart';
import 'package:core_utility/utility.dart';


// クイズ のお気に入りの名詞  data アクセスクラス
class QuizFavoriteDao implements QuizFavoriteDaoInterface {
  @override
  Future<QuizFavoriteResponse> getFavoriteList(
    
      QuizFavoriteRequest request) async {
        print(request.quizTopicType.name);
    return QuizFavoriteResponse(
        texts: await QuizFavoriteSql.getAllWords(
            request.quizTopicType.name, AppSettingInfo().appInstallType.name),
        answers: await QuizFavoriteSql.getAllAnswers(
            request.quizTopicType.name, AppSettingInfo().appInstallType.name));
  }
}

/// quiz お気に入り data アクセス インターフェース
abstract class QuizFavoriteDaoInterface {
  Future<QuizFavoriteResponse> getFavoriteList(QuizFavoriteRequest request);
}
