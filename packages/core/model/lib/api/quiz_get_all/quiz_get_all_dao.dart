import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/api/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_model/api/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_sql/sql.dart';

// クイズの問題の data アクセスクラス
class QuizGetAllDao implements QuizGetAllDaoInterface {
  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    try {
      // インストールされるアプリの種類
      switch (request.appInstallType) {
        // 問題数に応じて 問題を取得する

        // 韓国語初級
        case AppInstallType.koreanBeginner:
          switch (request.quizTopicType) {
            /// トピックに応じて問題を取得する
            /// 単語
            case QuizTopicType.word:
              var shuffledQuizzes =
                  List<Quiz>.from(AppQuizData.korianBiginnerQuizes)..shuffle();
              var limitedQuizes =
                  shuffledQuizzes.take(request.questionCount).toList();
              List<String> answers = limitedQuizes.map((quiz) {
                return quiz.options
                    .firstWhere((option) => option.isCorrect)
                    .text;
              }).toList();
              var favorites = await QuizFavoriteSql.getAllWords(
                  request.quizTopicType.name, request.appInstallType.name);
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
                  request.quizTopicType.name, request.appInstallType.name);
              List<bool> isFavorites = limitedQuizzes
                  .map((quiz) => favorites.contains(quiz.text))
                  .toList();
              return Future.value(QuizGetAllResponse(
                  quizes: limitedQuizzes,
                  answers: answers,
                  isFavorites: isFavorites));

            default:
              return Future.value(QuizGetAllResponse(
                  quizes: AppQuizData.korianBiginnerQuizes,
                  answers: [],
                  isFavorites: []));
          }

        default:
          return Future.value(QuizGetAllResponse(
              quizes: AppQuizData.korianBiginnerQuizes,
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
