import 'package:core_dao/dao/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_test_util/test_util.dart';
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
  late QuizGetAllDao quizDao;

  setUp(() {
    mockSharedPreferencesRepository = MockSharedPreferencesRepositoryImpl();
    mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepository();

    container = createContainer(overrides: [
      sharedPreferencesRepositoryProvider
          .overrideWithValue(mockSharedPreferencesRepository),
      quizFavoriteSqlRepositoryProvider
          .overrideWithValue(mockQuizFavoriteSqlRepository),
    ]);
    quizDao = container.read(quizGetAllDaoProvider);

    // appSettingInfoProvider が AppInstallType.koreanBeginner を返すように設定
    when(mockSharedPreferencesRepository.fetch<int>(any))
        .thenReturn(AppInstallType.koreanBeginner.index);
  });

  group("quizGetAllDaoProvider", () {
    test('[正常形] getQuizList', () async {
      // Arrange
      when(mockQuizFavoriteSqlRepository.getTopicWords(any))
          .thenAnswer((_) async => ['text1', 'text2']);

      final request = QuizGetAllRequest(
          quizTopicType: QuizTopicType.adjective,
          questionCount: 2,
          language: 'ja');

      // Act
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

    test('お気に入りに登録されている単語の場合 isFavorite が true になること', () async {
      /// 仮に代名詞カテゴリすべてがsqlにお気に入り登録されているとする
      /// その場合isFavorite は全部 trueになるはず
      when(mockQuizFavoriteSqlRepository.getTopicWords(any)).thenAnswer(
          (_) async => [
                '나',
                '저',
                '저희',
                '너',
                '너희',
                '당신',
                '당신들',
                '그',
                '그들',
                '그녀',
                '그녀들',
                '우리'
              ]);
      final request = QuizGetAllRequest(
          quizTopicType: QuizTopicType.pronoun,
          questionCount: 2,
          language: 'ja');
      final response = await quizDao.getQuizList(request);

      expect(response.isFavorites, [true, true]);

      verify(mockQuizFavoriteSqlRepository
          .getTopicWords(QuizTopicType.pronoun.name));
    });
  });
}
