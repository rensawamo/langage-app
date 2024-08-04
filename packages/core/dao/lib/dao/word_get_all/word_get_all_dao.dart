import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_dao/dao/word_get_all/word_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core_utility/utility.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'word_get_all_dao.g.dart';

/// [WordGetAllDao]のProvider
@Riverpod(keepAlive: true)
WordGetAllDao wordGetAllDao(WordGetAllDaoRef ref) {
  return WordGetAllDaoImpl(ref);
}

/// [WordGetAllDao] の具象クラス
class WordGetAllDaoImpl implements WordGetAllDao {
  final Ref ref;
  WordGetAllDaoImpl(this.ref);

  @override
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request) async {
    final AppInstallType appInstallType = ref.read(appSettingInfoProvider);
    try {
      logger.d('appInstallType: $appInstallType');
      return await _call(request, appInstallType);
    } catch (e) {
      logger.e(e);
      return WordGetAllResponse(
        words: [],
        answers: [],
        isFavorites: [],
        sentences: [],
        pronunciations: [],
        translations: [],
      );
    }
  }

  /// [AppInstallType] に応じてクイズをシャッフルして取得
  Future<WordGetAllResponse> _call(
      WordGetAllRequest request, AppInstallType appInstallType) async {
    List<Quiz> quizzes = await _getQuizzes(request, appInstallType);

    List<String> words = quizzes.map((quiz) => quiz.text).toList();
    List<String> sentences = quizzes.map((quiz) => quiz.sentence).toList();
    List<String> pronunciations =
        quizzes.map((quiz) => quiz.pronunciation).toList();
    List<String> translations =
        quizzes.map((quiz) => quiz.translation).toList();
    List<String> answers = _getAnswers(quizzes, request.quizTopicType);
    List<bool> isFavorites;
    // QuizTopicType.favorite の場合は全てisFavoriteをtrueにする
    if (request.quizTopicType == QuizTopicType.favorite) {
      isFavorites = List.filled(quizzes.length, true);
    } else {
      isFavorites = await _getFavorites(request, words);
    }
    return Future.value(WordGetAllResponse(
      words: words,
      answers: answers,
      isFavorites: isFavorites,
      sentences: sentences,
      pronunciations: pronunciations,
      translations: translations,
    ));
  }

  /// [AppInstallType] に応じてクイズを取得
  Future<List<Quiz>> _getQuizzes(
      WordGetAllRequest request, AppInstallType appInstallType) async {
    switch (appInstallType) {
      case AppInstallType.koreanBeginner:
        return await _getKoreanBeginnerQuizzes(request);
      case AppInstallType.englishBeginner:
        return await _getEnglishBeginnerQuizzes(request);
      default:
        throw Exception('Failed to fetch quiz data');
    }
  }

  /// [AppKoBeginnerQuizData] から [QuizTopicType] に応じたクイズを取得
  Future<List<Quiz>> _getKoreanBeginnerQuizzes(
      WordGetAllRequest request) async {
    switch (request.quizTopicType) {
      case QuizTopicType.adjective:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBiginnerAdjectivesJa
            : AppKoBeginnerQuizData.korianBiginnerAdjectivesEn;
      case QuizTopicType.adverb:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBiginnerAdversJa
            : AppKoBeginnerQuizData.korianBiginnerAdversEn;
      case QuizTopicType.verb:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBeginnerVerbsJa
            : AppKoBeginnerQuizData.korianBeginnerVerbsEn;
      case QuizTopicType.noun:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBiginnerNounsJa
            : AppKoBeginnerQuizData.korianBiginnerNounsEn;
      case QuizTopicType.pronoun:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBeginnerPronounsJa
            : AppKoBeginnerQuizData.korianBeginnerPronounsEn;
      case QuizTopicType.greet:
        return request.language == 'ja'
            ? AppKoBeginnerQuizData.korianBiginnerGreetsJa
            : AppKoBeginnerQuizData.korianBiginnerGreetsEn;
      case QuizTopicType.favorite:
        return await _getFavoriteQuizzes();
      default:
        throw Exception('Failed to fetch quiz data');
    }
  }

  /// [AppEnBeginnerQuizData] から [QuizTopicType] に応じたクイズを取得
  Future<List<Quiz>> _getEnglishBeginnerQuizzes(
      WordGetAllRequest request) async {
    switch (request.quizTopicType) {
      case QuizTopicType.adjective:
        return AppEnBeginnerQuizData.englishBiginnerAdjectives;
      case QuizTopicType.adverb:
        return AppEnBeginnerQuizData.englishBiginnerAdvers;
      case QuizTopicType.verb:
        return AppEnBeginnerQuizData.englishBeginnerVerbs;
      case QuizTopicType.noun:
        return AppEnBeginnerQuizData.englishBiginnerNouns;
      case QuizTopicType.pronoun:
        return AppEnBeginnerQuizData.englishBeginnerPronouns;
      case QuizTopicType.greet:
        return AppEnBeginnerQuizData.englishBiginnerGreets;
      case QuizTopicType.favorite:
        return await _getFavoriteQuizzes();
      default:
        throw Exception('Failed to fetch quiz data');
    }
  }

  /// [QuizFavoriteSqlRepository] からお気に入りのクイズを取得
  Future<List<Quiz>> _getFavoriteQuizzes() async {
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    // isFavorite を　true にする
    return await quizFavoriteSql.getAllquizzes();
  }

  /// クイズから答えを取得
  List<String> _getAnswers(List<Quiz> quizzes, QuizTopicType topicType) {
    if (topicType == QuizTopicType.favorite) {
      return quizzes.map((quiz) => quiz.answer!).toList();
    } else {
      return quizzes
          .map((quiz) =>
              quiz.options.firstWhere((option) => option.isCorrect).text)
          .toList();
    }
  }

  /// [QuizFavoriteSqlRepository] からお気に入りの単語を取得
  /// ifFavorites はお気に入りかどうかを示すリストを更新
  Future<List<bool>> _getFavorites(
      WordGetAllRequest request, List<String> words) async {
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    var favorites =
        await quizFavoriteSql.getTopicWords(request.quizTopicType.name);
    return words.map((word) => favorites.contains(word)).toList();
  }
}

/// [WordGetAllRequest] リクエスト
/// [WordGetAllResponse] レスポンス
/// 単語リストを取得する daoクラスの 抽象クラス
abstract class WordGetAllDao {
  /// 単語リストを取得
  /// [request] 単語リクエスト
  /// [WordGetAllResponse] 単語レスポンス
  Future<WordGetAllResponse> getWordList(WordGetAllRequest request);
}
