import 'package:core_dao/dao.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:feature_wordlist/wordlist/word_list_state.dart';
import 'package:feature_wordlist/wordlist/word_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'helper/helper_test.mocks.dart';

void main() {
  group('WordListViewmodel Tests', () {
    late ProviderContainer container;

    late MockWordGetAllDao mockWordGetAllDao;
    late MockQuizFavoriteSqlRepository mockQuizFavoriteSqlRepository;

    setUp(() async {
      mockWordGetAllDao = MockWordGetAllDao();
      mockQuizFavoriteSqlRepository = MockQuizFavoriteSqlRepository();

      container = createContainer(
        overrides: [
          wordGetAllDaoProvider.overrideWithValue(mockWordGetAllDao),
          quizFavoriteSqlRepositoryProvider
              .overrideWithValue(mockQuizFavoriteSqlRepository),
        ],
      );
    });

    test('[正常系] updateFavorite で insertとdeleteが正しく機能して、isFavoritesが更新されること',
        () async {
      final initialState = WordListState(
        quizzes: ['word1', 'word2'],
        answers: ['answer1', 'answer2'],
        isFavorites: [false, true],
        sentences: ['sentence1', 'sentence2'],
        translations: ['translation1', 'translation2'],
        pronunciations: ['pronunciation1', 'pronunciation2'],
        scrollController: ScrollController(),
        isLoading: false,
        currentPage: 1,
      );

      final vm = container.read(wordlistProvider.notifier);
      vm.state = initialState;
      vm.language = 'en';
      vm.quizTopicType = QuizTopicType.pronoun;
      await vm.init();

      final text = 'word1';
      final answer = 'answer1';
      final sentence = 'sentence1';
      final translation = 'translation1';
      final pronunciation = 'pronunciation1';
      final quizTopicType = QuizTopicType.pronoun;

      when(mockQuizFavoriteSqlRepository.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      )).thenAnswer((_) async => 1);
      when(mockQuizFavoriteSqlRepository.delete(text))
          .thenAnswer((_) async => 1);

      await vm.updateFavorite(
          0, text, answer, sentence, translation, pronunciation, quizTopicType);

      final state = container.read(wordlistProvider);
      expect(state.isFavorites[0], true);
      verify(mockQuizFavoriteSqlRepository.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      )).called(1);

      await vm.updateFavorite(
          0, text, answer, sentence, translation, pronunciation, quizTopicType);
      final updateState = container.read(wordlistProvider);
      expect(updateState.isFavorites[0], false);
      verify(mockQuizFavoriteSqlRepository.delete(text)).called(1);
    });

    test('[正常系]clear list', () async {
      final vm = container.read(wordlistProvider.notifier);
      vm.language = 'en';
      vm.quizTopicType = QuizTopicType.pronoun;
      await vm.init();

      final state = container.read(wordlistProvider);
      expect(state.quizzes, []);
    });
  });
}
