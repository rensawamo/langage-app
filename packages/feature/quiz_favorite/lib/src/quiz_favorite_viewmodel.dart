import 'package:core_dao/dao/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_dao/dao/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';

import 'package:core_utility/utility.dart';
import 'package:feature_quiz_favorite/src/quiz_favorite_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// E201.受診予約一覧 Viewmodel
class QuizeFavoriteViewmodel extends QuizeFavoriteViewmodelInterface {
  /// コンストラクタ

  QuizeFavoriteViewmodel(Ref ref, QuizFavoriteState state, this.dao)
      : super(ref, state);

  ///  お気に入りの単語一覧取得　daoクラス
  final QuizFavoriteDao dao;

  /// 初期設定
  /// スクロールコントローラにイベントリスナー設定.
  @override
  Future<void> init() async {
    initializeTts();
    await getFavorites(quizTopicType);
  }

  /// お気に入りの単語一覧取得
  @override
  Future<void> getFavorites(QuizTopicType quizTopicType) async {
    // ローディング開始
    state = state.copyWith(isLoading: true);

    // ここで data から quizeを取得する
    dao
        .getFavoriteList(QuizFavoriteRequest(
      quizTopicType: quizTopicType,
      pageSize: pageSize,
    ))
        .then((response) {
      print(response.texts);
      // 一覧に追加
      state = state.copyWith(
          quizzes: response.texts,
          answers: response.answers,
          isHideAnswers: List.filled(response.texts.length, true),
          isLoading: false);
    }).catchError((error) {
      // エラー処理
      state = state.copyWith(isLoading: false);
    });
  }

  @override
  void selectDropDownMenu(String value) {
    // ドロップダウンメニューの選択
    state = state.copyWith(selectDropDownValue: value);
  }

  void toggleAnswer(int index) {
    // 回答表示の切り替え
    List<bool> isHideAnswers = List.from(state.isHideAnswers); // 変更可能なコピーを作成

    isHideAnswers[index] = !isHideAnswers[index];
    state = state.copyWith(isHideAnswers: isHideAnswers);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage(AppSettingInfo().ftsSetting); // 韓国語に設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> deleteFavorite(int index) async {
    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);
    // お気に入り削除
    await quizFavoriteSql.delete(
      state.quizzes[index],
    );
    // 更新
    getFavorites(quizTopicType);
  }

  /// 一覧クリア
  ///
  /// 一覧に表示している受診予約情報をクリアする.
  @override
  void clearList() {
    state = state.copyWith(quizzes: []);
  }
}

/// E201.受診予約一覧 Viewmodel インターフェース
abstract class QuizeFavoriteViewmodelInterface
    extends StateNotifier<QuizFavoriteState> {
  QuizeFavoriteViewmodelInterface(this.ref, super.state);

  final Ref ref;

  /// クイズの種別
  late QuizTopicType quizTopicType;

  /// ページサイズ(固定)
  final int pageSize = 50;

  Future<void> init();

  Future<void> getFavorites(QuizTopicType quizTopicType);

  // dropDownMenu の選択
  void selectDropDownMenu(String value);

  // 回答表示の切り替え
  void toggleAnswer(int index);

  void clearList();

  /// TTSの初期化
  void initializeTts();

  /// sql お気に入り削除
  Future<void> deleteFavorite(int index);

  // tts の言語設定
  late FlutterTts flutterTts;
}
