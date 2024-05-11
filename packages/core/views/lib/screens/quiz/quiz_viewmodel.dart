import 'package:core_enums/enums.dart';

import 'package:core_model/api/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_model/api/quiz_get_all/quiz_get_all_request.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:core_model/model.dart';
import 'package:core_views/screens/quiz/quiz_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// E201.受診予約一覧 Viewmodel
class QuizViewmodel extends QuizViewmodelInterface {
  /// コンストラクタ
  ///
  /// [state]で初期状態をセット
  /// [dao]API Modelクラス AppointmentGetListAllをセット
  QuizViewmodel(super.state, this.dao);

  /// 受診予約一覧取得（過去分含む）　Modelクラス
  final QuizGetAllDao dao;

  /// 初期設定
  ///
  @override
  Future<void> init() async {
    controller = PageController(initialPage: 0);
    // クイズの 一覧を取得
    getQuizList();
    initializeTts();
    updateCounter(0);
  }

  /// Quize の一覧取得
  @override
  Future<void> getQuizList() async {
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
        .getQuizList(QuizGetAllRequest(
            appInstallType: appInstallType,
            questionCount: questionCount))
        .then((response) {
      // 一覧に追加
      state = state.copyWith(quizs: response.quizes);
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

  /// 一覧クリア
  @override
  void clearList() {
    state = state.copyWith(quizs: []);
  }

  /// クイズの質問の移動
  @override
  void nextQuestion() {
    // まだ問題が残っている場合は 次の問題へ
    if (state.counter < state.quizs.length - 1) {
      state.controller.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
      state = state.copyWith(counter: state.counter + 1);
      // 問題がない場合は totalのスコアを更新
    } else {
      state = state.copyWith(gtotalScore: state.totalScore);
    }
  }

  @override
  void updateCounter(int newCounter) {
    state = state.copyWith(counter: newCounter);
  }

  @override
  void selectAns(int selected_index, bool isCorrect) {
    if (!state.selected) {
      final newScore = isCorrect ? state.totalScore + 1 : state.totalScore;
      state = state.copyWith(
          selectedInd: selected_index, selected: true, totalScore: newScore);
    }
  }

  @override
  void next() {
    nextQuestion();
    state = state.copyWith(selected: false);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage('ko-KR'); // 韓国語に設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
}

/// Quize Viewmodel インターフェース
abstract class QuizViewmodelInterface extends StateNotifier<QuizState> {
  QuizViewmodelInterface(super.state);

  /// Application install type
  late AppInstallType appInstallType;

  /// インジケータ表示メソッド
  late Function showIndicator;

  /// インジケータ破棄メソッド
  late Function hideIndicator;

  /// ページコントローラ
  late PageController controller;

  /// ページサイズ(固定)
  final int pageSize = 50;

  // tts の言語設定
  late FlutterTts flutterTts;

  // 問題数
  late int questionCount;

  /// ロード中か
  bool isLoading = false;
  // 画面描写
  Future<void> init();
  // クイズの一覧取得
  Future<void> getQuizList();
  // 一覧クリア
  void clearList();
  // クイズの質問の移動
  void nextQuestion();
  // 回答選択
  void selectAns(int selected_index, bool isCorrect);

  // 次の問題へ遷移
  void next();
  // カウンター更新
  void updateCounter(int newCounter);

  /// TTSの初期化
  void initializeTts();

  // 発声
  Future<void> speak(String text);
}
