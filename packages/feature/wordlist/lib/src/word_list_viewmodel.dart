import 'package:core_enums/enums.dart';
import 'package:core_model/api/word_get_all/word_get_all_dao.dart';
import 'package:core_model/api/word_get_all/word_get_all_request.dart';
import 'package:feature_wordlist/src/word_list_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// 出題単語一覧 Viewmodel
class WordListViewmodel extends WordListViewmodelInterface {
  /// コンストラクタ

  WordListViewmodel(super.state, this.dao);

  ///  お気に入りの単語一覧取得　daoクラス
  final WordGetAllDao dao;

  /// 初期設定
  ///
  /// スクロールコントローラにイベントリスナー設定.
  @override
  Future<void> init() async {
    // tls初期化
    initializeTts();
    final controller = state.scrollController;
    controller.addListener(() {
      // スクロール量が全体の95%になった時,APIを呼ぶ.
      final scrollValue =
          controller.offset / controller.position.maxScrollExtent;
      if (scrollValue > 0.95) {
        state = state.copyWith(currentPage: state.currentPage + 1);
        getQuizList(state.selectValue);
      }
    });
  }

  /// Quize の一覧取得
  @override
  Future<void> getQuizList(QuizTopicType quizTopicType) async {
    // インジケータ表示
    showIndicator();

    // ここで data から quizeを取得する
    dao
        .getWordList(WordGetAllRequest(
      quizTopicType: quizTopicType,
      page: state.currentPage,
      pageSize: 20,
    ))
        .then((response) {
      print(response);
      // 一覧に追加
      state = state.copyWith(
          quizzes: response.words,
          answers: response.answers,
          isFavorites: response.isFavorites);
    }).catchError((error) {
      print(error.toString());
      state = state.copyWith(quizzes: []);
      // エラー処理
    }).whenComplete(() {
      // インジケータ非表示
      hideIndicator();
    });
  }

  @override
  void selectDropDownMenu(String value, QuizTopicType quizTopicType) {
    // ドロップダウンメニューの選択
    state =
        state.copyWith(selectDropDownValue: value, selectValue: quizTopicType);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage('ko-KR'); // 韓国語に設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  String getTopic() {
    if (state.selectDropDownValue == "名詞") {
      return QuizTopicType.noun.name;
    } else {
      return QuizTopicType.greet.name;
    }
  }

  @override
  void updateFavorite(int index) {
    // お気に入りの更新
    List<bool> isFavorites = List.from(state.isFavorites); // 変更可能なコピーを作成

    isFavorites[index] = !isFavorites[index];
    state = state.copyWith(isFavorites: isFavorites);
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
abstract class WordListViewmodelInterface extends StateNotifier<WordListState> {
  WordListViewmodelInterface(super.state);

  /// クイズの種別
  late QuizTopicType quizTopicType;

  /// インジケータ表示メソッド
  late Function showIndicator;

  /// インジケータ破棄メソッド
  late Function hideIndicator;

  /// ロード中か
  bool isLoading = false;

  Future<void> init();

  Future<void> getQuizList(QuizTopicType quizTopicType);

  // dropDownMenu の選択
  void selectDropDownMenu(String value, QuizTopicType quizTopicType);

  void clearList();

  /// TTSの初期化
  void initializeTts();

  // TOPICタイプの選択されてる文字列を返す
  String getTopic();

  // お気に入りの更新
  void updateFavorite(int index);

  // tts の言語設定
  late FlutterTts flutterTts;
}
