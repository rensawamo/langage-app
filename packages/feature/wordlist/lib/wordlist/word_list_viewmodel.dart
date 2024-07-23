import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:feature_wordlist/wordlist/word_list_state.dart';
import 'package:core_dao/dao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [WordListViewmodel] のProvider
final WordlistProvider = StateNotifierProvider.autoDispose<
    WordListViewmodel, WordListState>(
  (ref) {
    return WordListViewmodelImpl(
      ref,
      WordListState(
        quizzes: [],
        answers: [],
        isFavorites: [],
        sentences: [],
        translations: [],
        pronunciations: [],
        scrollController: ScrollController(),
        isLoading: true,
        currentPage: 1,
      ),
    );
  },
);

class WordListViewmodelImpl extends WordListViewmodel {
  WordListViewmodelImpl(this.ref, WordListState state) : super(state);
  final Ref ref;

  /// 初期設定
  @override
  Future<void> init() async {
    getQuizList(quizTopicType);
  }

  /// [QuizTopicType] を指定して
  /// [QuizGetAllDao]からクイズリストを取得
  @override
  Future<void> getQuizList(QuizTopicType quizTopicType) async {
    state = state.copyWith(isLoading: true);
    final dao = ref.read(wordGetAllDaoProviderProvider);
    dao
        .getWordList(WordGetAllRequest(
      quizTopicType: quizTopicType,
      page: state.currentPage,
      pageSize: 20,
      language: language,
    ))
        .then((response) {
      print(response.answers);
      state = state.copyWith(
          quizzes: response.words,
          answers: response.answers,
          isFavorites: response.isFavorites,
          sentences: response.sentences,
          pronunciations: response.pronunciations,
          translations: response.translations);
    }).catchError((error) {
      state = state.copyWith(quizzes: [], isLoading: false);
    }).whenComplete(() {
      state = state.copyWith(isLoading: false);
    });
  }

  /// [QuizFavoriteSqlRepository] お気に入り更新
  /// タップでお気に入りの更新を行う
  @override
  void updateFavorite(
      int index,
      String text,
      String answer,
      String sentence,
      String translation,
      String pronunciation,
      QuizTopicType quizTopicType) async {
    List<bool> isFavorites = List.from(state.isFavorites);
    state =
        state.copyWith(isFavorites: isFavorites..[index] = !isFavorites[index]);

    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

    if (state.isFavorites[index]) {
      await quizFavoriteSql.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      );
    } else {
      await quizFavoriteSql.delete(text);
    }
  }

  @override
  void clearList() {
    state = state.copyWith(quizzes: []);
  }
}


/// [WordListState] の状態を管理する
abstract class WordListViewmodel extends StateNotifier<WordListState> {
  WordListViewmodel(super.state);

  late QuizTopicType quizTopicType;

  /// スマホの言語設定
  late String language;

  bool isLoading = false;

  Future<void> init();

  Future<void> getQuizList(QuizTopicType quizTopicType);

  void clearList();

  // お気に入りの更新
  void updateFavorite(int index, String text, String answer, String sentence,
      String translation, String pronunciation, QuizTopicType quizTopicType);
}
