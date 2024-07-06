import 'package:core_designsystem/designsystem.dart';
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/widgets/quiz/quiz_button.dart';
import 'package:core_views/widgets/quiz/quiz_next_button.dart';
import 'package:core_views/widgets/quiz/quiz_progress_bar.dart';
import 'package:feature_quiz/quiz_result/quiz_result_page.dart';
import 'package:flutter/material.dart';

// アプリクイズのページ
class QuizPageView extends StatelessWidget {
  final List<Quiz> quizes;
  final List<String> answers;
  final List<String> sentences;
  final List<String> translations;
  final List<String> pronunciations;

  final List<bool> isFavorites;
  final List<bool?> scores;
  final bool isFinished;
  final int index;
  final Function selectAns;
  final Function next;
  final Function speak;
  final Quiz quiz;
  final int count;
  final bool selected;
  final int selected_ind;
  final int tatalScore;
  final QuizTopicType quizTopicType;

  /// テキストの大きさが定義されている場合に適応する
  final AppTextSizeType? textType;

  const QuizPageView({
    Key? key,
    required this.quizes,
    required this.answers,
    required this.sentences,
    required this.translations,
    required this.pronunciations,
    required this.isFavorites,
    required this.scores,
    required this.isFinished,
    required this.index,
    required this.selectAns,
    required this.next,
    required this.speak,
    required this.quiz,
    required this.count,
    required this.selected,
    required this.selected_ind,
    required this.quizTopicType,
    this.textType,
    required this.tatalScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isFinished
          ? QuizResultPage(
              speak: speak,
              quizzes: quizes.map((e) => e.text).toList(),
              answers: answers,
              sentences: sentences,
              translations: translations,
              pronunciations: pronunciations,
              isFavorites: isFavorites,
              scores: scores,
              count: count,
              totalScore: tatalScore,
              topicType: quizTopicType,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quiz ${index + 1}',
                  style: AppTextStyles.body(context),
                ),
                SizedBox(
                  height: context.mediaQueryHeight * .02,
                ),
                progressBar(count: count, index: index),
                SizedBox(
                  height: context.mediaQueryHeight * .02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topRight: Radius.circular(8.0)),
                        boxShadow: [
                          BoxShadow(
                              color: AppColorsSet.getShadowColor(context),
                              offset: Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          quiz.text,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.body(context, color: Colors.black
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.volume_up, color: Colors.blue),
                          onPressed: () async {
                            await speak(quiz.text);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.mediaQueryHeight * .02,
                ),

                Container(
                  height: context.mediaQueryHeight * .45,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: quiz.options.length,
                      itemBuilder: (context, index1) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: AppQuizbuttonWidget(
                            selectAns: selectAns,
                            quiz: quiz,
                            ans_ind: index1,
                            selected: selected,
                            selected_ind: selected_ind,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // next button
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: QuizNextButton(
                      next: next,
                      quizeCount: count,
                      isSelected: selected,
                      totalScore: tatalScore,
                      textType: textType,
                    )),
              ],
            ),
    );
  }
}
