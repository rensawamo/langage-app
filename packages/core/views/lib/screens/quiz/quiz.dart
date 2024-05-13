import 'package:core_enums/enums.dart';
import 'package:core_model/api/quiz_get_all/topic_param.dart';
import 'package:core_model/model.dart';
import 'package:core_views/screens/quiz/quiz_state.dart';
import 'package:core_views/screens/quiz/quiz_viewmodel.dart';
import 'package:core_views/views.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:core_views/widgets/quiz/quiz_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Provider
final QuizGetProvider =
    StateNotifierProvider.autoDispose<QuizViewmodelInterface, QuizState>(
  (ref) {
    return QuizViewmodel(
      QuizState(
        quizs: [],
        isFavorites: [],
        controller: PageController(),
      ),
      QuizGetAllDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class QuizPage extends StatelessWidget {
  QuizPage({
    super.key,
    required this.quizTopicType,
  });

  final TopicParam quizTopicType;

  /// 初期化処理
  void init(BuildContext context, WidgetRef ref) async {
    final vm = ref.watch(QuizGetProvider.notifier);

    // アプリケーションの種別
    vm.appInstallType = AppSettingInfo().appInstallType;

    // 問題数をセットする
    vm.questionCount = quizTopicType.extra;

    vm.quizTopicType = quizTopicType.quizTopicType;

    // インジケータ表示
    vm.showIndicator = () {
      AppIndicator.show(context);
    };
    // viewmodel側にインジケータ破棄処理をセット
    vm.hideIndicator = () {
      AppIndicator.hide(context);
    };
    vm.flutterTts = FlutterTts();
    // 初期設定
    await vm.init();
  }

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
          screenContext: screenContext,
          hasPrevButton: true,
          shouldRemoveFocus: true,
          title: '単語',
          initFrame: (context, ref) {
            // 初期化処理
            init(context, ref);
          },
          body: Column(
            children: [Expanded(child: _page())],
          ));
    });
  }

  Widget _page() {
    return Consumer(builder: (context, ref, child) {
      List<Quiz> quizes = ref.watch(QuizGetProvider).quizs;
      return PageView.builder(
        itemCount: quizes.length,
        physics: NeverScrollableScrollPhysics(),
        controller: ref.watch(QuizGetProvider).controller,
        itemBuilder: (context, index) {
          Quiz quiz = quizes[index];
          return AppQuizPageView(
            quizes: quizes,
            isFavorites: ref.read(QuizGetProvider).isFavorites,
            scores: ref.read(QuizGetProvider).scores ?? [],
            isFinished: ref.read(QuizGetProvider).isFinished,
            index: index,
            selectAns: ref.read(QuizGetProvider.notifier).selectAns,
            next: ref.read(QuizGetProvider.notifier).nextQuestion,
            speak: ref.read(QuizGetProvider.notifier).speak,
            quiz: quiz,
            count: quizes.length,
            selected: ref.read(QuizGetProvider).selected,
            selected_ind: ref.read(QuizGetProvider).selectedInd,
            tatalScore: ref.read(QuizGetProvider).totalScore,
            installtype: AppSettingInfo().appInstallType,
            quizTopicType: quizTopicType.quizTopicType,
          );
        },
      );
    });
  }
}
