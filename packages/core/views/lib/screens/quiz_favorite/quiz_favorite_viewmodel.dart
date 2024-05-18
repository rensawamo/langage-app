import 'package:core_enums/enums.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// E201.受診予約一覧 Viewmodel
class QuizeFavoriteViewmodel extends QuizeFavoriteViewmodelInterface {
  /// コンストラクタ

  QuizeFavoriteViewmodel(super.state, this.dao);

  ///  お気に入りの単語一覧取得　daoクラス
  final QuizFavoriteDao dao;

  /// 初期設定
  ///
  /// スクロールコントローラにイベントリスナー設定.
  @override
  Future<void> init() async {
    final controller = state.scrollController;
    controller.addListener(() {
      // スクロール量が全体の95%になった時, DBから新しいデータを取得する.
      final scrollValue =
          controller.offset / controller.position.maxScrollExtent;
      if (scrollValue > 0.95) {
        print("dummuy");
      }
    });
    initializeTts();
  }

  /// お気に入りの単語一覧取得
  @override
  Future<void> getFavorites(QuizTopicType quizTopicType) async {
    // ロード中なら何もしない
    if (isLoading) {
      return;
    }
    // ロード中に設定
    isLoading = true;

    // インジケータ表示
    showIndicator();

    // パラメータ生成

    // ここで data から quizeを取得する
    dao
        .getFavoriteList(QuizFavoriteRequest(
      appInstallType: appInstallType,
      quizTopicType: quizTopicType,
      pageSize: pageSize,
    ))
        .then((response) {
      // 一覧に追加
      state = state.copyWith(
          quizzes: response.texts,
          answers: response.answers,
          isHideAnswers: List.filled(response.texts.length, true));
    }).catchError((error) {
      print(error.toString());
      // エラー処理
    }).whenComplete(() {
      // ロード中解除
      isLoading = false;
      // インジケータ非表示
      hideIndicator();
    });
  }

  @override
  void selectDropDownMenu(String value) {
    // ドロップダウンメニューの選択
    state = state.copyWith(selectDropDownValue: value);
  }

  void toggleAnswer(int index) {
    print(state.isHideAnswers);
    // 回答表示の切り替え
    List<bool> isHideAnswers = List.from(state.isHideAnswers); // 変更可能なコピーを作成

    isHideAnswers[index] = !isHideAnswers[index];
    state = state.copyWith(isHideAnswers: isHideAnswers);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage('ko-KR'); // 韓国語に設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> deleteFavorite(int index) async {
    // お気に入り削除
    await QuizFavoriteSql.delete(
        state.quizzes[index], quizTopicType.name, appInstallType.name);
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
  QuizeFavoriteViewmodelInterface(super.state);

  /// アプリのインストールタイプ
  late AppInstallType appInstallType;

  /// クイズの種別
  late QuizTopicType quizTopicType;

  /// インジケータ表示メソッド
  late Function showIndicator;

  /// インジケータ破棄メソッド
  late Function hideIndicator;

  /// ページサイズ(固定)
  final int pageSize = 50;

  /// ロード中か
  bool isLoading = false;

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
