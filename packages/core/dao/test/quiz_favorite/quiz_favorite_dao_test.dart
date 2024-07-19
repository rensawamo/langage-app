import 'package:core_dao/dao/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_dao/dao/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_test_util/test_util.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/helper.mocks.dart';

void main() {
  group('QuizFavoriteDaoImpl', () {
    late ProviderContainer container;
    late MockQuizFavoriteSqlRepositoryImpl mockQuizFavoriteSqlRepository;

    setUp(() {
      mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepositoryImpl();
      container = createContainer(
        overrides: [
          quizFavoriteSqlRepositoryProvider
              .overrideWithValue(mockQuizFavoriteSqlRepository),
        ],
      );
    });

    test('getFavoriteList returns correct QuizFavoriteResponse', () async {
      // arrange
      final request =
          QuizFavoriteRequest(pageSize: 20, quizTopicType: QuizTopicType.greet);
      final expectedTexts = ['text1', 'text2', 'text3'];
      final expectedAnswers = ['answer1', 'answer2', 'answer3'];

      when(mockQuizFavoriteSqlRepository
              .getTopicWords(QuizTopicType.greet.name))
          .thenAnswer((_) async => expectedTexts);
      when(mockQuizFavoriteSqlRepository
              .getAllAnswers(QuizTopicType.greet.name))
          .thenAnswer((_) async => expectedAnswers);

      // act

      final quizdao = container.read(quizFavoriteDaoProviderProvider);
      final response = await quizdao.getFavoriteList(request);

      // assert
      expect(response.texts, expectedTexts);
      expect(response.answers, expectedAnswers);
      verify(mockQuizFavoriteSqlRepository.getTopicWords(QuizTopicType.greet.name));
    });
  });
}
