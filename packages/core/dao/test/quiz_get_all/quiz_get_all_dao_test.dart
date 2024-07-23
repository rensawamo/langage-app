import 'package:core_dao/dao/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_foundation/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/helper.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockSharedPreferencesRepositoryImpl mockSharedPreferencesRepository;
  late MockQuizFavoriteSqlRepository mockQuizFavoriteSqlRepository;

  setUp(() {
    mockSharedPreferencesRepository = MockSharedPreferencesRepositoryImpl();
    mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepository();

    container = ProviderContainer(overrides: [
      sharedPreferencesRepositoryProvider
          .overrideWithValue(mockSharedPreferencesRepository),
      quizFavoriteSqlRepositoryProvider
          .overrideWithValue(mockQuizFavoriteSqlRepository),
    ]);

    // appSettingInfoProvider が AppInstallType.koreanBeginner を返すように設定
    when(mockSharedPreferencesRepository.fetch<int>(any))
        .thenReturn(AppInstallType.koreanBeginner.index);
  });

  tearDown(() {
    container.dispose();
  });

  test('getQuizList returns correct response for koreanBeginner', () async {
    // Arrange
    when(mockQuizFavoriteSqlRepository.getTopicWords(any))
        .thenAnswer((_) async => ['text1', 'text2']);

    final request = QuizGetAllRequest(
        quizTopicType: QuizTopicType.adjective,
        questionCount: 2,
        language: 'ja');

    // Act
    final quizDao = container.read(quizGetAllDaoProviderProvider);
    final response = await quizDao.getQuizList(request);

    // Assert
    expect(response.quizes.length, 2);
    expect(response.answers.length, 2);
    expect(response.sentences.length, 2);
    expect(response.translations.length, 2);
    expect(response.pronunciations.length, 2);
    expect(response.isFavorites.length, 2);
    verify(mockQuizFavoriteSqlRepository
        .getTopicWords(QuizTopicType.adjective.name));
    verify(mockSharedPreferencesRepository.fetch<int>(any));
  });
}
