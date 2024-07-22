import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_dao/dao/word_get_all/word_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core_utility/utility.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'word_get_all_dao.g.dart';

@riverpod
WordGetAllDao wordGetAllDaoProvider(WordGetAllDaoProviderRef ref) {
  return WordGetAllDaoImpl(ref);
}

class WordGetAllDaoImpl implements WordGetAllDao {
  final Ref ref;
  WordGetAllDaoImpl(this.ref);

  @override
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request) async {
    final AppInstallType appInstallType = ref.read(appSettingInfoProvider);
    try {
      // インストールされるアプリの種類
      switch (appInstallType) {
        // 韓国語初級
        case AppInstallType.koreanBeginner:
          return _handleKoreanBeginnerQuiz(request);

        default:
          return Future.value(WordGetAllResponse(
              words: AppQuizData.korianBiginnerNounsJa
                  .map((quiz) => quiz.text)
                  .toList(),
              answers: [],
              isFavorites: [],
              sentences: [],
              pronunciations: [],
              translations: []));
      }
    } catch (e) {
      throw Exception('Failed to fetch quiz data');
    }
  }

  Future<WordGetAllResponse> _handleKoreanBeginnerQuiz(
      WordGetAllRequest request) async {
    List<Quiz> quizzes;

    switch (request.quizTopicType) {
      /// 形容詞
      case QuizTopicType.adjective:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdjectivesJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdjectivesEn);
        }
        break;

      /// 副詞
      case QuizTopicType.adverb:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdjectivesJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerAdjectivesEn);
        }
        break;
      // 動詞
      case QuizTopicType.verb:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBeginnerVerbsJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBeginnerVerbsEn);
        }
        break;
      // 名詞
      case QuizTopicType.noun:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerNounsJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerNounsEn);
        }
        break;
      // 代名詞
      case QuizTopicType.pronoun:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBeginnerPronounsJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBeginnerPronounsEn);
        }
        break;
      // 挨拶
      case QuizTopicType.greet:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerGreetsJa);
        } else {
          quizzes = List<Quiz>.from(AppQuizData.korianBiginnerGreetsEn);
        }
        break;
      // お気に入り
      case QuizTopicType.favorite:
        final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

        quizzes = await quizFavoriteSql.getAllquizzes();
      default:
        quizzes = [];
        break;
    }

    List<String> words = quizzes.map((quiz) => quiz.text).toList();
    List<String> sentences = quizzes.map((quiz) => quiz.sentence).toList();
    List<String> pronunciations =
        quizzes.map((quiz) => quiz.pronunciation).toList();
    logger.d(pronunciations);

    List<String> translations =
        quizzes.map((quiz) => quiz.translation).toList();

    var answers = List<String>.filled(words.length, '');
    // QuizTopicType がfavoriteの場合 全部お気に入りにする
    var isFavorites = List<bool>.filled(words.length, false);
    if (request.quizTopicType == QuizTopicType.favorite) {
      answers = quizzes.map((quiz) => quiz.answer!).toList();
      isFavorites = List<bool>.filled(words.length, true);
    } else {
      answers = quizzes.map((quiz) {
        return quiz.options.firstWhere((option) => option.isCorrect).text;
      }).toList();
      final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

      var favorites =
          await quizFavoriteSql.getTopicWords(request.quizTopicType.name);
      isFavorites = words.map((word) => favorites.contains(word)).toList();
    }

    return Future.value(WordGetAllResponse(
        words: words,
        answers: answers,
        isFavorites: isFavorites,
        sentences: sentences,
        pronunciations: pronunciations,
        translations: translations));
  }
}

/// word data アクセス インターフェース
abstract class WordGetAllDao {
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request);
}
