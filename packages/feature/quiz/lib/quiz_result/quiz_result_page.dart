import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/quiz/quiz_page_data.dart';
import 'package:core_ui/ui.dart';
import 'package:core_utility/utility.dart';
import 'package:feature_quiz/quiz_result/quiz_result_page_viewmodel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:core_designsystem/designsystem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class QuizResultPage extends StatefulWidget {
  const QuizResultPage(
      {required this.speak,
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
      Key? key})
      : super(key: key);

  final Function speak;
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

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<QuizResultPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.read(quizReultPageProvider.notifier);
      final isFavorite = ref.watch(quizReultPageProvider).isFavorites;
      final scores = ref.watch(quizReultPageProvider).scores;
      final isLoading = ref.watch(quizReultPageProvider).isLoading;
      return AppBaseFrame(
        screenContext: context,
        hasAppbar: false,
        initFrame: (context, ref) async {
          vm.init(
            widget.scores,
            widget.isFavorites,
          );
        },
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'スコアグラフ',
                      style: AppTextStyles.title3(context),
                      textAlign: TextAlign.center,
                    ),
                    _buildPieChart(),
                    SizedBox(height: 24.0),
                    Text(
                      '合計スコア: ${widget.totalScore} / ${widget.count}',
                      style: AppTextStyles.headline(context),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    _buildButton(
                      context,
                      text: "正誤表を見る",
                      onTap: () {
                        QuizResultTablePageData(
                          quizzes: widget.quizzes,
                          answers: widget.answers,
                          scores: scores,
                          isFavorites: isFavorite,
                          sentences: widget.sentences,
                          translations: widget.translations,
                          pronunciations: widget.pronunciations,
                          topicType: widget.topicType,
                        ).push(context).then((value) {
                          vm.updateFavorite(value);
                        });
                      },
                    ),
                    SizedBox(height: 12.0),
                    _buildButton(
                      context,
                      text: "トピックに戻る",
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

  Widget _buildPieChart() {
    final correctAnswers = widget.scores.where((score) => score == true).length;
    final incorrectAnswers =
        widget.scores.where((score) => score == false).length;
    final unanswered = widget.scores.where((score) => score == null).length;

    return Container(
      height: 200,
      padding: EdgeInsets.all(13),
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: correctAnswers.toDouble(),
              color: Colors.red,
              title: '正解',
              radius: 50,
            ),
            PieChartSectionData(
              value: incorrectAnswers.toDouble(),
              color: Colors.blue,
              title: '不正解',
              radius: 50,
            ),
            PieChartSectionData(
              value: unanswered.toDouble(),
              color: Colors.grey,
              title: '未回答',
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
      {required String text, required VoidCallback onTap}) {
    return Padding(
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
