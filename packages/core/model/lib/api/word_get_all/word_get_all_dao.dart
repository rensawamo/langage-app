import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/api/word_get_all/word_get_all_request.dart';
import 'package:core_model/api/word_get_all/word_get_all_response.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/utility/app_setting_info.dart';

// クイズの問題の data アクセスクラス
class WordGetAllDao implements WordGetAllDaoInterface {
  @override
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request) async {
    try {
      // インストールされるアプリの種類
      switch (AppSettingInfo().appInstallType) {
        // 問題数に応じて 問題を取得する

        // 韓国語初級
        case AppInstallType.koreanBeginner:
          switch (request.quizTopicType) {
            /// トピックに応じてクイズの単語と解答を取得する
            /// 単語
            case QuizTopicType.word:
              List<String> words = AppQuizData.korianBiginnerQuizes
                  .take(request.pageSize * request.page)
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerQuizes
                  .map((quiz) => quiz.options
                      .firstWhere((option) => option.isCorrect)
                      .text)
                  .toList();

              var favorites = await QuizFavoriteSql.getAllWords(
                  request.quizTopicType.name,
                  AppSettingInfo().appInstallType.name);
              List<bool> isFavorites =
                  words.map((quiz) => favorites.contains(quiz)).toList();
              return Future.value(WordGetAllResponse(
                  words: words, answers: answers, isFavorites: isFavorites));

            /// 挨拶
            case QuizTopicType.greet:
              List<String> words = AppQuizData.korianBiginnerGreets
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerGreets
                  .map((quiz) => quiz.options
                      .firstWhere((option) => option.isCorrect)
                      .text)
                  .toList();

              var favorites = await QuizFavoriteSql.getAllWords(
                  request.quizTopicType.name,
                  AppSettingInfo().appInstallType.name);
              List<bool> isFavorites =
                  words.map((quiz) => favorites.contains(quiz)).toList();
              return Future.value(WordGetAllResponse(
                  words: words, answers: answers, isFavorites: isFavorites));

            default:
              return Future.value(WordGetAllResponse(
                  words: AppQuizData.korianBiginnerQuizes
                      .map((quiz) => quiz.text)
                      .toList(),
                  answers: [],
                  isFavorites: []));
          }

        default:
          return Future.value(WordGetAllResponse(
              words: AppQuizData.korianBiginnerQuizes
                  .map((quiz) => quiz.text)
                  .toList(),
              answers: [],
              isFavorites: []));
      }
    } catch (e) {
      throw Exception('Failed to fetch quiz data');
    }
  }
}

/// word data アクセス インターフェース
abstract class WordGetAllDaoInterface {
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request);
}
