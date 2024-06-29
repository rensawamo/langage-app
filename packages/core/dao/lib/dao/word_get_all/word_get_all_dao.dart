import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_dao/dao/word_get_all/word_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';

import 'package:core_sql/sql.dart';
import 'package:core_utility/utility.dart';

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
            /// トピックに応じてクイズ解答を取得する
            /// 名詞
            case QuizTopicType.noun:
              List<String> words = AppQuizData.korianBiginnerNouns
                  .take(request.pageSize * request.page)
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerNouns
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

            ///　形容詞
            case QuizTopicType.adjective:
              List<String> words = AppQuizData.korianBiginnerAdjectives
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerAdjectives
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

            // 副詞
            case QuizTopicType.adverb:
              List<String> words = AppQuizData.korianBiginnerAdvers
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerAdvers
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

            // 動詞
            case QuizTopicType.verb:
              List<String> words = AppQuizData.korianBiginnerVerbs
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerVerbs
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

            // 名詞
            case QuizTopicType.noun:
              List<String> words = AppQuizData.korianBiginnerNouns
                  .map((quiz) => quiz.text)
                  .toList();
              List<String> answers = AppQuizData.korianBiginnerNouns
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
                  words: AppQuizData.korianBiginnerNouns
                      .map((quiz) => quiz.text)
                      .toList(),
                  answers: [],
                  isFavorites: []));
          }

        default:
          return Future.value(WordGetAllResponse(
              words: AppQuizData.korianBiginnerNouns
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
