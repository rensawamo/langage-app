import 'package:core_dao/dao/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_request.dart';
import 'package:core_foundation/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'quiz_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// クイズ画面のViewmodel
class QuizViewmodelImpl extends QuizViewmodel {
  /// コンストラクタ
  ///
  /// [state]で初期状態をセット
  /// [dao]API Modelクラス AppointmentGetListAllをセット
  QuizViewmodelImpl(Ref ref, QuizState state, this.dao) : super(ref, state);

  final QuizGetAllDao dao;

  /// 初期設定
  ///
  @override
  Future<void> init() async {
    await getQuizList();

    state =
        state.copyWith(controller: PageController(initialPage: 0), counter: 0);
  }

  /// Quize の一覧取得
  @override
  Future<void> getQuizList() async {
    // ローディング開始
    state = state.copyWith(isLoading: true);

    // パラメータ生成
    // ここで data から quizeを取得する
    dao
        .getQuizList(QuizGetAllRequest(
            quizTopicType: quizTopicType, questionCount: questionCount))
        .then((response) {
      // 一覧に追加
      state = state.copyWith(
          quizzs: response.quizes,
          answers: response.answers,
          sentences: response.sentences,
          translations: response.translations,
          pronunciations: response.pronunciations,
          isFavorites: response.isFavorites);
    }).catchError((error) {
      print(error.toString());
      // エラー処理
    }).whenComplete(() {
      // ローディング終了
      state = state.copyWith(isLoading: false);
    });
  }

  void startNewQuestion() {
    // PageControllerをリセット
    state.controller.jumpToPage(0);
    // その他の初期化処理...
  }

  /// 一覧クリア
  @override
  void clearList() {
    state = state.copyWith(quizzs: []);
  }

  /// クイズの質問の移動
  ///  問題がない場合は resultのスコアへ移動
  @override
  void nextQuestion(bool isSelected) {
    // まだ問題が残っている場合は 次の問題へ
    if (state.counter < state.quizzs.length - 1) {
      state.controller.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
      state = state.copyWith(
        counter: state.counter + 1,
        selected: false,
      );
    } else {
      state = state.copyWith(
        gtotalScore: state.totalScore,
        selected: false,
        isFinished: true,
      );
    }
    // 回答していない場合は null を追加 未回答と表示する
    if (!isSelected) {
      state = state.copyWith(scores: List.from(state.scores)..add(null));
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
        selectedInd: selected_index,
        selected: true,
        totalScore: newScore,
        scores: List.from(state.scores)..add(isCorrect),
      );
    } else {
      state = state.copyWith(scores: List.from(state.scores)..add(null));
    }
    print(state.scores);
  }
}

/// Quize Viewmodel インターフェース
abstract class QuizViewmodel extends StateNotifier<QuizState> {
  QuizViewmodel(this.ref, super.state);
  final Ref ref;

  /// ページサイズ(固定)
  final int pageSize = 50;

  // tts の言語設定
  late FlutterTts flutterTts;

  // 問題数
  late int questionCount;

  // トピックの種別
  late QuizTopicType quizTopicType;

  /// ロード中か
  bool isLoading = false;
  // 画面描写
  Future<void> init();

  // クイズの一覧取得
  Future<void> getQuizList();

  // 一覧クリア
  void clearList();
  // クイズの質問の移動
  void nextQuestion(bool isSelected);

  // 回答選択
  void selectAns(int selected_index, bool isCorrect);

  // カウンター更新
  void updateCounter(int newCounter);
}
