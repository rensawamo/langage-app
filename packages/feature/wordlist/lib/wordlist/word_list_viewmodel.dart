import 'package:core_dao/dao/word_get_all/word_get_all_dao.dart';
import 'package:core_dao/dao/word_get_all/word_get_all_request.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:feature_wordlist/wordlist/word_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 出題単語一覧 Viewmodel
class WordListViewmodel extends WordListViewmodelInterface {
  /// コンストラクタ

  WordListViewmodel(Ref ref, WordListState state, this.dao) : super(ref, state);

  ///  お気に入りの単語一覧取得　daoクラス
  final WordGetAllDao dao;

  /// 初期設定
  ///
  /// スクロールコントローラにイベントリスナー設定.
  @override
  Future<void> init() async {


    getQuizList(quizTopicType);
  }

  /// Quize の一覧取得
  @override
  Future<void> getQuizList(QuizTopicType quizTopicType) async {
    // インジケータ表示
    state = state.copyWith(isLoading: true);
    // ここで data から quizeを取得する
    dao
        .getWordList(WordGetAllRequest(
      quizTopicType: quizTopicType,
      page: state.currentPage,
      pageSize: 20,
    ))
        .then((response) {
      print(response.answers);
      // 一覧に追加z
      state = state.copyWith(
          quizzes: response.words,
          answers: response.answers,
          isFavorites: response.isFavorites,
          sentences: response.sentences,
          pronunciations: response.pronunciations,
          translations: response.translations);
    }).catchError((error) {
      print(error.toString());
      state = state.copyWith(quizzes: []);
      // エラー処理
    }).whenComplete(() {
      // インジケータ非表示
      state = state.copyWith(isLoading: false);
    });
  }
  @override
  void updateFavorite(
      int index,
      String text,
      String answer,
      String sentence,
      String translation,
      String pronunciation,
      QuizTopicType quizTopicType) async {
    // お気に入りの更新
    List<bool> isFavorites = List.from(state.isFavorites); // 変更可能なコピーを作成
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

  /// 一覧クリア
  /// 一覧に表示している受診予約情報をクリアする.
  @override
  void clearList() {
    state = state.copyWith(quizzes: []);
  }
}

/// E201.受診予約一覧 Viewmodel インターフェース
abstract class WordListViewmodelInterface extends StateNotifier<WordListState> {
  WordListViewmodelInterface(this.ref, super.state);

  final Ref ref;

  /// クイズの種別
  late QuizTopicType quizTopicType;

  /// ロード中か
  bool isLoading = false;

  Future<void> init();

  Future<void> getQuizList(QuizTopicType quizTopicType);

  void clearList();


  // お気に入りの更新
  void updateFavorite(int index, String text, String answer, String sentence,
      String translation, String pronunciation, QuizTopicType quizTopicType);

}
