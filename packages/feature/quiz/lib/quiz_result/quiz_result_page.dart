import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/quiz/quiz_page_data.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_quiz/quiz_result/quiz_result_page_viewmodel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:core_designsystem/designsystem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class QuizResultPage extends StatelessWidget {
  final int totalScore;
  final int count;
  final List<String> quizzes;
  final List<String> answers;
  final List<String> sentences;
  final List<String> translations;
  final List<String> pronunciations;
  final List<bool> isFavorites;
  final List<bool?> scores;
  final QuizTopicType topicType;
  final AppTextSizeType? textType;

  const QuizResultPage({
    required this.totalScore,
    required this.count,
    required this.quizzes,
    required this.answers,
    required this.sentences,
    required this.translations,
    required this.pronunciations,
    required this.isFavorites,
    required this.scores,
    required this.topicType,
    this.textType,
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.read(quizResultPageProvider.notifier);
      final state = ref.watch(quizResultPageProvider);

      return AppBaseFrame(
        screenContext: context,
        hasAppbar: false,
        initFrame: (context, ref) async {
          vm.init(
            context,
            scores,
            isFavorites,
          );
        },
        body: state.isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                key: AppKeys.quizResultPage,
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context).scoreGraph,
                      style: AppTextStyles.title3(context),
                      textAlign: TextAlign.center,
                    ),
                    _buildPieChart(context),
                    SizedBox(height: 24.0),
                    Text(
                      '${AppLocalizations.of(context).totalScole} ${totalScore} / ${count}',
                      key: AppKeys.quizResultScore,
                      style: AppTextStyles.headline(context),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    _buildButton(
                      key: AppKeys.seeTable,
                      context,
                      text: AppLocalizations.of(context).seeTable,
                      onTap: () {
                        QuizResultTablePageData(
                          quizzes: quizzes,
                          answers: answers,
                          scores: state.scores,
                          isFavorites: state.isFavorites,
                          sentences: sentences,
                          translations: translations,
                          pronunciations: pronunciations,
                          topicType: topicType,
                        ).push(context).then((value) {
                          vm.updateFavorite(value);
                        });
                      },
                    ),
                    SizedBox(height: 12.0),
                    _buildButton(
                      key: AppKeys.goTopic,
                      context,
                      text: AppLocalizations.of(context).goTopic,
                      onTap: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
      );
    });
  }

  Widget _buildPieChart(BuildContext context) {
    final correctAnswers = scores.where((score) => score == true).length;
    final incorrectAnswers = scores.where((score) => score == false).length;
    final unanswered = scores.where((score) => score == null).length;

    return Container(
      key: AppKeys.quizResultPieChart,
      height: 200,
      padding: EdgeInsets.all(13),
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: correctAnswers.toDouble(),
              color: Colors.red,
              title: AppLocalizations.of(context).correct,
              radius: 50,
            ),
            PieChartSectionData(
              value: incorrectAnswers.toDouble(),
              color: Colors.blue,
              title: AppLocalizations.of(context).wrong,
              radius: 50,
            ),
            PieChartSectionData(
              value: unanswered.toDouble(),
              color: Colors.grey,
              title: AppLocalizations.of(context).noselect,
              radius: 50,
            ),
          ],
          sectionsSpace: 2,
          centerSpaceRadius: 40,
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String text, required VoidCallback onTap, required Key key}) {
    return Padding(
        key: key,
        padding: EdgeInsets.all(12),
        child: Container(
          color: AppColorsSet.getButtonColor(context),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColorsSet.getButtonColor(context),
              padding: EdgeInsets.symmetric(vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: onTap,
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ));
  }
}
