import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:core_utility/utility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_get_all_dao.g.dart';

/// [QuizGetAllDao]のProvider
@Riverpod(keepAlive: true)
QuizGetAllDao quizGetAllDaoProvider(QuizGetAllDaoProviderRef ref) {
  return QuizGetAllDaoImpl(ref);
}

/// [QuizGetAllDao] の具象クラス
class QuizGetAllDaoImpl implements QuizGetAllDao {
  final Ref ref;
  QuizGetAllDaoImpl(this.ref);

  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    final AppInstallType appInstallType = ref.read(appSettingInfoProvider);
    try {
      return await _call(request, appInstallType);
    } catch (e) {
      logger.e(e);
      return QuizGetAllResponse(
        quizes: [],
        answers: [],
        isFavorites: [],
        sentences: [],
        translations: [],
        pronunciations: [],
      );
    }
  }

  /// [AppInstallType] に応じてクイズをシャッフルして取得
  /// [QuizGetAllResponse] を返す
  Future<QuizGetAllResponse> _call(
      QuizGetAllRequest request, AppInstallType appInstallType) async {
    List<Quiz> quizzes;
    logger.d('appInstallType: $appInstallType');
    switch (appInstallType) {
      case AppInstallType.koreanBeginner:
        quizzes = _getKoreanBeginnerQuizzes(request);
        break;
      case AppInstallType.englishBeginner:
        quizzes = _getEnglishBeginnerQuizzes(request);
        break;
      default:
        logger.e('failed to fetch quiz data');
        throw Exception('Failed to fetch quiz data');
    }

    quizzes.shuffle();
    var limitedQuizzes = quizzes.take(request.questionCount).toList();
    List<String> sentences =
        limitedQuizzes.map((quiz) => quiz.sentence).toList();
    List<String> translations =
        limitedQuizzes.map((quiz) => quiz.translation).toList();
    List<String> pronunciations =
        limitedQuizzes.map((quiz) => quiz.pronunciation).toList();
    List<String> answers = limitedQuizzes
        .map((quiz) =>
            quiz.options.firstWhere((option) => option.isCorrect).text)
        .toList();
    List<bool> isFavorites = await _getFavorites(request, limitedQuizzes);

    return Future.value(QuizGetAllResponse(
      quizes: limitedQuizzes,
      answers: answers,
      sentences: sentences,
      translations: translations,
      pronunciations: pronunciations,
      isFavorites: isFavorites,
    ));
  }

  /// [AppKoBeginnerQuizData] から [QuizTopicType] に応じたクイズを取得
  List<Quiz> _getKoreanBeginnerQuizzes(QuizGetAllRequest request) {
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
      default:
        throw Exception('Failed to fetch quiz data');
    }
  }

  /// [AppEnBeginnerQuizData] から [QuizTopicType] に応じたクイズを取得
  List<Quiz> _getEnglishBeginnerQuizzes(QuizGetAllRequest request) {
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
      default:
        throw Exception('Failed to fetch quiz data');
    }
  }

  /// [QuizFavoriteSqlRepository] から [QuizTopicType] のお気に入りのクイズを取得
  /// お気に入りが含まれているかどうかのリストを返す bool
  Future<List<bool>> _getFavorites(
      QuizGetAllRequest request, List<Quiz> limitedQuizzes) async {
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    var favorites =
        await quizFavoriteSql.getTopicWords(request.quizTopicType.name);
    return limitedQuizzes.map((quiz) => favorites.contains(quiz.text)).toList();
  }
}

/// [QuizGetAllRequest] リクエスト
/// [QuizGetAllResponse] レスポンス
/// daoクラスの 抽象クラス
abstract class QuizGetAllDao {
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request);
}
