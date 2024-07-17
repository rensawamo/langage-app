import 'package:core_dao/dao/quiz_get_all/quiz_get_all_dao.dart';
import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_quiz/widget/quiz_page.dart';
import 'quiz_state.dart';
import 'quiz_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Provider
final quizGetProvider =
    StateNotifierProvider.autoDispose<QuizViewmodelInterface, QuizState>(
  (ref) {
    return QuizViewmodel(
      QuizState(
        quizzs: [],
        answers: [],
        sentences: [],
        translations: [],
        pronunciations: [],
        isFavorites: [],
        controller: PageController(),
      ),
      QuizGetAllDao(ref),
    );
  },
);

class QuizPage extends ConsumerStatefulWidget {
  final TopicParam quizTopicType;

  const QuizPage({
    Key? key,
    required this.quizTopicType,
  }) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends ConsumerState<QuizPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initialize(ref);
    });
  }

  Future<void> _initialize(WidgetRef ref) async {
    final vm = ref.read(quizGetProvider.notifier);

    // 問題数をセットする
    vm.questionCount = widget.quizTopicType.extra;

    vm.quizTopicType = widget.quizTopicType.quizTopicType;

    vm.flutterTts = FlutterTts();
    // 初期設定
    await vm.init();
  }

  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      final quizes = ref.watch(quizGetProvider.select((state) => state.quizzs));
      final answers =
          ref.watch(quizGetProvider.select((state) => state.answers));
      final isLoading =
          ref.watch(quizGetProvider.select((state) => state.isLoading));

      return AppBaseFrame(
          screenContext: screenContext,
          shouldRemoveFocus: true,
          title: 'クイズ',
          initFrame: (context, ref) async {
            await _initialize(ref);
          },
          body: Column(
            children: [
              Expanded(
                child: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : quizes.isEmpty
                        ? _empty()
                        : _page(quizes, answers),
              ),
            ],
          ));
    });
  }

  Widget _page(List<Quiz> quizes, List<String> answers) {
    return Consumer(builder: (context, ref, child) {
      return PageView.builder(
        itemCount: quizes.length,
        physics: const NeverScrollableScrollPhysics(),
        controller: ref.watch(quizGetProvider).controller,
        itemBuilder: (context, index) {
          final quiz = quizes[index];
          return QuizScreenWidget(
            quizes: quizes,
            answers: answers,
            sentences: ref.read(quizGetProvider).sentences,
            translations: ref.read(quizGetProvider).translations,
            pronunciations: ref.read(quizGetProvider).pronunciations,
            isFavorites: ref.read(quizGetProvider).isFavorites,
            scores: ref.read(quizGetProvider).scores,
            isFinished: ref.read(quizGetProvider).isFinished,
            index: index,
            selectAns: ref.read(quizGetProvider.notifier).selectAns,
            next: ref.read(quizGetProvider.notifier).nextQuestion,
            speak: ref.read(quizGetProvider.notifier).speak,
            quiz: quiz,
            count: quizes.length,
            selected: ref.read(quizGetProvider).selected,
            selected_ind: ref.read(quizGetProvider).selectedInd,
            tatalScore: ref.read(quizGetProvider).totalScore,
            quizTopicType: widget.quizTopicType.quizTopicType,
          );
        },
      );
    });
  }

  Widget _empty() {
    return const TileEmptyText(
      header: 'お気に入りは登録されていません。問題を解いて登録しましょう！',
      detail: '',
    );
  }
}
