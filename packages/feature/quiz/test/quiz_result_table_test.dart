import 'package:core_foundation/foundation.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_state.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_viewmodel.dart';

import 'helper/helper_test.mocks.dart';

void main() {
  group('QuizResultTablePageViewmodel Tests', () {
    late ProviderContainer container;
    late QuizResultTablePageViewmodel vm;
    late MockQuizFavoriteSqlRepository mockQuizFavoriteSqlRepository;

    setUp(() {
      mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepository();
      container = createContainer(
        overrides: [
          quizFavoriteSqlRepositoryProvider
              .overrideWithValue(mockQuizFavoriteSqlRepository),
        ],
      );
      vm = container.read(wordlistProvider.notifier);
    });

    test('[正常系] init でisFavoriteが正しく反映されること', () async {
      final isFavorite = [true, false, true];
      await vm.init(isFavorite);

      final state = container.read(wordlistProvider);
      expect(state.isFavorites, isFavorite);
    });

    test(
        '[正常系] updateFavorite で insertとdeleteが正しく機能して、isFavoritesが更新されること',
        () async {
      final initialState =
          QuizResultTablePageState(isFavorites: [true, false, true]);
      when(mockQuizFavoriteSqlRepository.insert(any, any, any, any, any, any))
          .thenAnswer((_) async => 1);
      when(mockQuizFavoriteSqlRepository.delete(any))
          .thenAnswer((_) async => 1);

      vm.state = initialState;

      final text = 'quizText';
      final answer = 'quizAnswer';
      final sentence = 'quizSentence';
      final translation = 'quizTranslation';
      final pronunciation = 'quizPronunciation';
      final quizTopicType = QuizTopicType.pronoun;

      await vm.updateFavorite(
          1, text, answer, sentence, translation, pronunciation, quizTopicType);

      final state = container.read(wordlistProvider);
      expect(state.isFavorites[1], true);

      verify(mockQuizFavoriteSqlRepository.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      )).called(1);

      await vm.updateFavorite(
          1, text, answer, sentence, translation, pronunciation, quizTopicType);
      final updatestate = container.read(wordlistProvider);
      expect(updatestate.isFavorites[1], false);

      verify(mockQuizFavoriteSqlRepository.delete(text)).called(1);

      verifyNoMoreInteractions(mockQuizFavoriteSqlRepository);
    });
  });
}
