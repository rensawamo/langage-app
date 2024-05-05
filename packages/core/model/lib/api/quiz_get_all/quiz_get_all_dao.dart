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
        case AppInstallType.koreanBeginner:
          return Future.value(
              QuizGetAllResponse(quizes: AppQuizData.korianBiginnerQuizes));
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
