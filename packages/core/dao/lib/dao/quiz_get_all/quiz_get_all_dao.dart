import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_get_all_dao.g.dart';

/// [QuizGetAllDao]のProvider
@Riverpod(keepAlive: true)
QuizGetAllDao quizGetAllDaoProvider(QuizGetAllDaoProviderRef ref) {
  return QuizGetAllDaoImpl(ref);
}

class QuizGetAllDaoImpl implements QuizGetAllDao {
  final Ref ref;
  QuizGetAllDaoImpl(this.ref);

  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    final AppInstallType appInstallType = ref.read(appSettingInfoProvider);

    try {
      switch (appInstallType) {
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

  // アプリ[KoreanBeginner]のクイズデータを取得
  Future<QuizGetAllResponse> _handleKoreanBeginnerQuiz(
      QuizGetAllRequest request) async {
    List<Quiz> quizzes;
    switch (request.quizTopicType) {
      case QuizTopicType.adjective:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerAdjectivesJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerAdjectivesEn);
        }
        break;

      case QuizTopicType.adverb:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerAdversJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerAdversEn);
        }
        break;

      case QuizTopicType.verb:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBeginnerVerbsJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBeginnerVerbsEn);
        }
        break;

      case QuizTopicType.noun:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerNounsJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerNounsEn);
        }
        break;

      case QuizTopicType.pronoun:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBeginnerPronounsJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBeginnerPronounsEn);
        }
        break;

      case QuizTopicType.greet:
        if (request.language == 'ja') {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerGreetsJa);
        } else {
          quizzes = List<Quiz>.from(AppKoBeginnerQuizData.korianBiginnerGreetsEn);
        }
        break;

      default:
        quizzes = [];
        break;
    }

    // 問題数を絞り
    // クイズをシャッフルする
    quizzes.shuffle();
    var limitedQuizzes = quizzes.take(request.questionCount).toList();
    // 問題文、翻訳、発音、答え、お気に入りの状態を取得
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
    List<bool> isFavorites = List<bool>.filled(limitedQuizzes.length, false);

    // お気に入りの単語を取得して 登録されてるかを確認
    // isFavorites を更新
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    var favorites =
        await quizFavoriteSql.getTopicWords(request.quizTopicType.name);
    isFavorites =
        limitedQuizzes.map((word) => favorites.contains(word.text)).toList();

    return Future.value(QuizGetAllResponse(
        quizes: limitedQuizzes,
        answers: answers,
        sentences: sentences,
        translations: translations,
        pronunciations: pronunciations,
        isFavorites: isFavorites));
  }
}

/// [QuizGetAllRequest] リクエスト
/// [QuizGetAllResponse] レスポンス
/// daoクラスの 抽象クラス
abstract class QuizGetAllDao {

  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request);
}
