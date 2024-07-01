import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';
import 'package:core_sql/sql.dart';
import 'package:core_utility/utility/app_setting_info.dart';


// クイズの問題の data アクセスクラス
class QuizGetAllDao implements QuizGetAllDaoInterface {
  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    print("getQuizList");
    try {
      // インストールされるアプリの種類
      switch (AppSettingInfo().appInstallType) {
        // 問題数に応じて 問題を取得する

        // 韓国語初級
        case AppInstallType.koreanBeginner:
          switch (request.quizTopicType) {
            /// トピックに応じて問題を取得する
            /// 名詞
            case QuizTopicType.noun:
              var shuffledQuizzes =
                  List<Quiz>.from(AppQuizData.korianBiginnerNouns)..shuffle();
              print(shuffledQuizzes.length);
              var limitedQuizes =
                  shuffledQuizzes.take(request.questionCount).toList();
              List<String> answers = limitedQuizes.map((quiz) {
                return quiz.options
                    .firstWhere((option) => option.isCorrect)
                    .text;
              }).toList();
              var favorites = await QuizFavoriteSql.getAllWords(
                  request.quizTopicType.name,
                  AppSettingInfo().appInstallType.name);
              List<bool> isFavorites = limitedQuizes
                  .map((quiz) => favorites.contains(quiz.text))
                  .toList();
              print(isFavorites);
              return Future.value(QuizGetAllResponse(
                  quizes: limitedQuizes,
                  answers: answers,
                  isFavorites: isFavorites));

            /// 挨拶
            case QuizTopicType.greet:
              var shuffledQuizzes =
                  List<Quiz>.from(AppQuizData.korianBiginnerGreets)..shuffle();

              var limitedQuizzes =
                  shuffledQuizzes.take(request.questionCount).toList();
              List<String> answers = limitedQuizzes.map((quiz) {
                return quiz.options
                    .firstWhere((option) => option.isCorrect)
                    .text;
              }).toList();
              var favorites = await QuizFavoriteSql.getAllWords(
                  request.quizTopicType.name,
                  AppSettingInfo().appInstallType.name);
              List<bool> isFavorites = limitedQuizzes
                  .map((quiz) => favorites.contains(quiz.text))
                  .toList();
              return Future.value(QuizGetAllResponse(
                  quizes: limitedQuizzes,
                  answers: answers,
                  isFavorites: isFavorites));

            ///お気に入り
            case QuizTopicType.favorite:
              var favoriteWords = await QuizFavoriteSql.getAllWords(
                  "word", AppSettingInfo().appInstallType.name);
              var favoriteGreets = await QuizFavoriteSql.getAllWords(
                  "greet", AppSettingInfo().appInstallType.name);
              var favorites = favoriteWords + favoriteGreets;

              var Quizzes = List<Quiz>.from(AppQuizData.korianBiginnerNouns);

              // shuffleQuizeから お気に入りのみを取り出す
              var limitedQuizes =
                  Quizzes.where((quiz) => favorites.contains(quiz.text))
                      .take(request.questionCount)
                      .toList()
                    ..shuffle();
              List<String> answers = limitedQuizes.map((quiz) {
                return quiz.options
                    .firstWhere((option) => option.isCorrect)
                    .text;
              }).toList();
              return Future.value(QuizGetAllResponse(
                  quizes: limitedQuizes,
                  answers: answers,
                  isFavorites: List<bool>.filled(limitedQuizes.length, true)));

            default:
              return Future.value(QuizGetAllResponse(
                  quizes: AppQuizData.korianBiginnerNouns,
                  answers: [],
                  isFavorites: []));
          }

        default:
          return Future.value(QuizGetAllResponse(
              quizes: AppQuizData.korianBiginnerNouns,
              answers: [],
              isFavorites: []));
      }
    } catch (e) {
      throw Exception('Failed to fetch quiz data');
    }
  }
}

/// quiz 問題 data アクセス インターフェース
abstract class QuizGetAllDaoInterface {
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request);
}
