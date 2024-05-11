import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/api/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_model/api/quiz_get_all/quiz_get_all_response.dart';

// クイズの問題の data アクセスクラス
class QuizGetAllDao implements QuizGetAllDaoInterface {
  @override
  Future<QuizGetAllResponse> getQuizList(QuizGetAllRequest request) async {
    try {
      switch (request.appInstallType) {
        // 問題数に応じて 問題を取得する
        case AppInstallType.koreanBeginner:
          var shuffledQuizzes =
              List<Quiz>.from(AppQuizData.korianBiginnerQuizes)..shuffle();
          var limitedQuizzes =
              shuffledQuizzes.take(request.questionCount).toList();
          return Future.value(QuizGetAllResponse(quizes: limitedQuizzes));

        default:
          return Future.value(
              QuizGetAllResponse(quizes: AppQuizData.korianBiginnerQuizes));
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
