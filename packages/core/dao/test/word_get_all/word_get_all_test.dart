import 'package:core_dao/dao/word_get_all/word_get_all_dao.dart';
import 'package:core_data/data.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/helper.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockSharedPreferencesRepositoryImpl mockSharedPreferencesRepository;
  late MockQuizFavoriteSqlRepository mockQuizFavoriteSqlRepository;
  late WordGetAllDao wordGetAllDao;

  setUp(() {
    mockSharedPreferencesRepository = MockSharedPreferencesRepositoryImpl();
    mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepository();

    container = createContainer(overrides: [
      sharedPreferencesRepositoryProvider
          .overrideWithValue(mockSharedPreferencesRepository),
      quizFavoriteSqlRepositoryProvider
          .overrideWithValue(mockQuizFavoriteSqlRepository),
    ]);
    wordGetAllDao = container.read(wordGetAllDaoProvider);

    // appSettingInfoProvider が AppInstallType.koreanBeginner を返すように設定
    when(mockSharedPreferencesRepository.fetch<int>(any))
        .thenReturn(AppInstallType.koreanBeginner.index);
  });

  group("wordGetAllDaoProvider", () {
    test('[正常形] getWordlist', () async {
      // Arrange
      when(mockQuizFavoriteSqlRepository.getAllquizzes())
          .thenAnswer((_) async => [
                Quiz(
                  text: "작다",
                  sentence: "그녀는 작은 집에서 산다.",
                  translation: "彼女は小さな家に住んでいる。",
                  answer: "小さい",
                  pronunciation: "チャクタ",
                  options: [
                    Option(text: "小さい", isCorrect: true),
                  ],
                )
              ]);

      final request = WordGetAllRequest(
          quizTopicType: QuizTopicType.favorite,
          language: 'ja',
          pageSize: 20,
          page: 1);

      // Act
      final response = await wordGetAllDao.getWordList(request);

      // Assert
      expect(response.words, ["작다"]);
      expect(response.sentences, ["그녀는 작은 집에서 산다."]);
      verify(mockQuizFavoriteSqlRepository.getAllquizzes()).called(1);
    });

    test('お気に入り以外のときはランダムで単語が取得されること', () async {
      // Arrange
      when(mockQuizFavoriteSqlRepository.getTopicWords(any))
          .thenAnswer((_) async => [
                "text1",
                "text2",
              ]);

      final request = WordGetAllRequest(
          quizTopicType: QuizTopicType.adjective,
          language: 'ja',
          pageSize: 20,
          page: 1);

      // Act
      final response = await wordGetAllDao.getWordList(request);

      // Assert
      expect(response.words.length,
          AppKoBeginnerQuizData.korianBiginnerAdjectivesJa.length);
      expect(response.sentences.length,
          AppKoBeginnerQuizData.korianBiginnerAdjectivesJa.length);
      expect(response.translations.length,
          AppKoBeginnerQuizData.korianBiginnerAdjectivesJa.length);
      expect(response.pronunciations.length,
          AppKoBeginnerQuizData.korianBiginnerAdjectivesJa.length);
      expect(response.isFavorites.length,
          AppKoBeginnerQuizData.korianBiginnerAdjectivesJa.length);
      verify(mockQuizFavoriteSqlRepository
          .getTopicWords(QuizTopicType.adjective.name));
    });

    test("sqlにお気に入りに登録されている単語がある場合 isFavoriteがtrueに代わること", () async {
      // Arrange

      when(mockQuizFavoriteSqlRepository.getTopicWords(any))
          .thenAnswer((_) async => [
                '나',
              ]);
      final request = WordGetAllRequest(
          quizTopicType: QuizTopicType.pronoun,
          language: 'ja',
          pageSize: 20,
          page: 1);

      // Act
      final response = await wordGetAllDao.getWordList(request);

      // Assert
      expect(response.isFavorites[0],
          true); // お気に入りに登録されている場合 順番に取得でindex0 だけがおきにりに登録されている
      expect(response.isFavorites[1], false); // お気に入りに登録されていない場合
    });
  });
}
