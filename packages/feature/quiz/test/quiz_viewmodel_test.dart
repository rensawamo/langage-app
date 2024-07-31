import 'package:core_dao/dao/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_test_util/assets/quiz_test_data.dart';
import 'package:core_test_util/test_util.dart';
import 'package:feature_quiz/quiz/quiz_state.dart';
import 'package:feature_quiz/quiz/quiz_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'helper/helper_test.mocks.dart';

void main() {
  group('QuizViewmodel Tests', () {
    late ProviderContainer container;
    late QuizGetAllDaoImpl mockQuizGetAllDao;

    setUp(() {
      mockQuizGetAllDao = MockQuizGetAllDaoImpl();
      container = createContainer(
        overrides: [
          quizGetAllDaoProviderProvider
              .overrideWith((ref) => mockQuizGetAllDao),
        ],
      );
    });

    test('[正常系]初期化処理 Daoが正しくデータを返してきたらstateの状態が更新されること', () async {
      final vm = container.read(quizProvider.notifier);

      when(mockQuizGetAllDao.getQuizList(QuizGetAllRequest(
              questionCount: 15,
              language: "en",
              quizTopicType: QuizTopicType.pronoun)))
          .thenAnswer((_) async => QuizGetAllResponse(
                quizes: quizTestData,
                answers: ['Answer1', 'Answer2'],
                sentences: ['Sentence1', 'Sentence2'],
                translations: ['Translation1', 'Translation2'],
                pronunciations: ['Pronunciation1', 'Pronunciation2'],
                isFavorites: [true, false],
              ));
      vm.language = 'en';
      vm.questionCount = 15;
      vm.quizTopicType = QuizTopicType.pronoun;
      await vm.init();

      final state = container.read(quizProvider);
      expect(state.quizzs.first, quizTestData.first);
      expect(state.isLoading, false);
      expect(state.answers, ['Answer1', 'Answer2']);
      expect(state.sentences, ['Sentence1', 'Sentence2']);
      expect(state.translations, ['Translation1', 'Translation2']);
      expect(state.pronunciations, ['Pronunciation1', 'Pronunciation2']);
      expect(state.isFavorites, [true, false]);
      verify(mockQuizGetAllDao.getQuizList(QuizGetAllRequest(
              questionCount: 15,
              language: "en",
              quizTopicType: QuizTopicType.pronoun)))
          .called(1);
    });

    test('[正常系]nextbutton がnullを記録すること', () async {
      // ※  state.controller.nextPage(
      // duration: const Duration(milliseconds: 200), curve: Curves.linear); はUnit Testできない
      final vm = container.read(quizProvider.notifier);
      final initialState = QuizState(
        quizzs: quizTestData, // count 2
        answers: ['Answer1', 'Answer2'],
        sentences: ['Sentence1', 'Sentence2'],
        translations: ['Translation1', 'Translation2'],
        pronunciations: ['Pronunciation1', 'Pronunciation2'],
        isFavorites: [true, false],
        counter: 2, // 問題終了 (回答した数 = 問題数)
        controller: PageController(),
      );
      vm.language = 'en';
      vm.questionCount = 15;
      vm.quizTopicType = QuizTopicType.pronoun;
      await vm.init();
      vm.state = initialState;
      // quizの問題で回答が記録されていないとき 未回答にするためnullを追加
      vm.nextQuestion(false);
      final state = container.read(quizProvider);
      expect(state.scores, [null]);
      expect(state.isFinished, true);
    });
  });
}
