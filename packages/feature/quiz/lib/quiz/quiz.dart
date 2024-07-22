import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_designsystem/designsystem.dart';
import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/repository.dart';
import 'package:core_ui/ui.dart';
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
      final quizes = ref.watch(quizGetProvider.select((state) => state.quizzs));
      final answers =
          ref.watch(quizGetProvider.select((state) => state.answers));
      final isLoading =
          ref.watch(quizGetProvider.select((state) => state.isLoading));

      return AppBaseFrame(
          screenContext: screenContext,
          shouldRemoveFocus: true,
          title: AppLocalizations.of(context).quiz,
          initFrame: (context, ref) async {
            final vm = ref.read(quizGetProvider.notifier);
            vm.questionCount = quizTopicType.extra;

            vm.quizTopicType = quizTopicType.quizTopicType;
            Locale appLocale = Localizations.localeOf(context);
            vm.language = appLocale.languageCode;
            await vm.init();
          },
          body: Column(
            children: [
              Expanded(
                child: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : quizes.isEmpty
                        ? _empty(context)
                        : _page(quizes, answers),
              ),
            ],
          ));
    });
  }

  Widget _page(List<Quiz> quizes, List<String> answers) {
    return Consumer(builder: (context, ref, child) {
      // TTS
      final speak = ref.read(ttsRepositoryProvider).speak;
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
            speak: speak,
            quiz: quiz,
            count: quizes.length,
            selected: ref.read(quizGetProvider).selected,
            selected_ind: ref.read(quizGetProvider).selectedInd,
            tatalScore: ref.read(quizGetProvider).totalScore,
            quizTopicType: quizTopicType.quizTopicType,
          );
        },
      );
    });
  }

  Widget _empty(BuildContext context) {
    return TileEmptyText(
      header: AppLocalizations.of(context).noStarSentence,
      detail: '',
    );
  }
}
