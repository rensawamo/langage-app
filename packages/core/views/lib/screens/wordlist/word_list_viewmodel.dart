import 'package:core_data/data.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/api/word_get_all/word_get_all_dao.dart';
import 'package:core_model/api/word_get_all/word_get_all_request.dart';
import 'package:core_model/model.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_request.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_state.dart';
import 'package:core_views/screens/wordlist/word_list_state.dart';
import 'package:core_views/utility/app_setting_info.dart';
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
    // インジケータ表示
    showIndicator();

    // tls初期化
    initializeTts();
  }

  /// Quize の一覧取得
  @override
  Future<void> getQuizList(QuizTopicType quizTopicType) async {
    // パラメータ生成

    // ここで data から quizeを取得する
    dao
        .getWordList(WordGetAllRequest(
      quizTopicType: quizTopicType,
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
  void selectDropDownMenu(String value) {
    // ドロップダウンメニューの選択
    state = state.copyWith(selectDropDownValue: value);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage('ko-KR'); // 韓国語に設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  String getTopic() {
    if (state.selectDropDownValue == "単語") {
      return QuizTopicType.word.name;
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
  void selectDropDownMenu(String value);

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
