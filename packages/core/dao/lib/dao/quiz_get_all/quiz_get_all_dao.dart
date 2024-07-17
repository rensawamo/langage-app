import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:core_utility/utility.dart';
import 'package:core_utility/utility/app_setting_info.dart';

// クイズの問題の data アクセスクラス
class QuizGetAllDao implements QuizGetAllDaoInterface {
  final Ref ref;
  QuizGetAllDao(this.ref);

  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    try {
      // インストールされるアプリの種類
      switch (AppSettingInfo().appInstallType) {
        // 問題数に応じて問題を取得する

        // 韓国語初級
        case AppInstallType.koreanBeginner:
          return _handleKoreanBeginnerQuiz(request);

        default:
          return Future.value(QuizGetAllResponse(
              quizes: [],
              answers: [],
              isFavorites: [],
              sentences: [],
              translations: [],
              pronunciations: []));
      }
    } catch (e) {
      throw Exception('Failed to fetch quiz data');
    }
  }

  Future<QuizGetAllResponse> _handleKoreanBeginnerQuiz(
      QuizGetAllRequest request) async {
    List<Quiz> quizzes;
    switch (request.quizTopicType) {
      /// 形容詞
      case QuizTopicType.adjective:
        quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdjectives);
        break;

      /// 副詞
      case QuizTopicType.adverb:
        quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdvers);
        break;
      // 動詞
      case QuizTopicType.verb:
        quizzes = List<Quiz>.from(AppQuizData.korianBeginnerVerbs);
        break;
      // 名詞
      case QuizTopicType.noun:
        quizzes = List<Quiz>.from(AppQuizData.korianBiginnerNouns);
        break;
      // 代名詞
      case QuizTopicType.pronoun:
        quizzes = List<Quiz>.from(AppQuizData.korianBeginnerPronouns);
        break;
      // 挨拶
      case QuizTopicType.greet:
        quizzes = List<Quiz>.from(AppQuizData.korianBiginnerGreets);
        break;
      // お気に入り

      default:
        quizzes = [];
        break;
    }

    quizzes.shuffle();
    // 問題数に応じて問題を取得する
    var limitedQuizzes = quizzes.take(request.questionCount).toList();

    List<String> sentences = limitedQuizzes.map((quiz) {
      return quiz.sentence;
    }).toList();

    List<String> translations = limitedQuizzes.map((quiz) {
      return quiz.translation;
    }).toList();

    List<String> pronunciations = limitedQuizzes.map((quiz) {
      return quiz.pronunciation;
    }).toList();

    var answers = List<String>.filled(limitedQuizzes.length, '');
    // QuizTopicType がfavoriteの場合 全部お気に入りにする
    var isFavorites = List<bool>.filled(limitedQuizzes.length, false);

    answers = limitedQuizzes.map((quiz) {
      return quiz.options.firstWhere((option) => option.isCorrect).text;
    }).toList();

    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

    var favorites =
        await quizFavoriteSql.getTopicWords(request.quizTopicType.name);
    logger.i(favorites);
    logger.i(limitedQuizzes);
    isFavorites =
        limitedQuizzes.map((word) => favorites.contains(word.text)).toList();

    logger.i(isFavorites);
    return Future.value(QuizGetAllResponse(
        quizes: limitedQuizzes,
        answers: answers,
        sentences: sentences,
        translations: translations,
        pronunciations: pronunciations,
        isFavorites: isFavorites));
  }
}

/// quiz 問題 data アクセス インターフェース
abstract class QuizGetAllDaoInterface {
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request);
  final Ref ref;
  QuizGetAllDaoInterface(this.ref);
}
