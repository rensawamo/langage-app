import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_designsystem/designsystem.dart';
import 'package:core_repository/repository.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_quiz/quiz/quiz_state.dart';
import 'package:feature_quiz/widget/quiz_page.dart';
import 'quiz_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuizPage extends StatelessWidget {
  final TopicParam quizTopicType;

  const QuizPage({
    Key? key,
    required this.quizTopicType,
  }) : super(key: key);

  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.watch(quizGetProvider.notifier);
      final state = ref.watch(quizGetProvider);
      // DI
      // speaking
      final tts = ref.read(ttsRepositoryProvider);

      return AppBaseFrame(
          screenContext: screenContext,
          shouldRemoveFocus: true,
          title: AppLocalizations.of(context).quiz,
          initFrame: (context, ref) async {
            vm.questionCount = quizTopicType.extra;
            vm.quizTopicType = quizTopicType.quizTopicType;
            Locale appLocale = Localizations.localeOf(context);
            vm.language = appLocale.languageCode;
            await vm.init();
          },
          body: Column(
            children: [
              Expanded(
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : state.quizzs.isEmpty
                        ? _empty(context)
                        : _page(state, vm, tts.speak),
              ),
            ],
          ));
    });
  }

  Widget _page(QuizState state, QuizViewmodel vm, Function speak) {
    return PageView.builder(
      itemCount: state.quizzs.length,
      physics: const NeverScrollableScrollPhysics(),
      controller: state.controller,
      itemBuilder: (context, index) {
        final quiz = state.quizzs[index];
        return QuizWidget(
          quizes: state.quizzs,
          answers: state.answers,
          sentences: state.sentences,
          translations: state.translations,
          pronunciations: state.pronunciations,
          isFavorites: state.isFavorites,
          scores: state.scores,
          isFinished: state.isFinished,
          index: index,
          selectAns: vm.selectAns,
          next: vm.nextQuestion,
          speak: speak,
          quiz: quiz,
          count: state.quizzs.length,
          selected: state.selected,
          selected_ind: state.selectedInd,
          tatalScore: state.totalScore,
          quizTopicType: quizTopicType.quizTopicType,
        );
      },
    );
  }

  Widget _empty(BuildContext context) {
    return TileEmptyText(
      header: AppLocalizations.of(context).noStarSentence,
      detail: '',
    );
  }
}
