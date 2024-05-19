import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/quiz/quiz_button.dart';
import 'package:core_views/widgets/quiz/quiz_next_button.dart';
import 'package:core_views/widgets/quiz/quiz_progress_bar.dart';
import 'package:core_views/widgets/quiz/result_page_widget.dart';
import 'package:flutter/material.dart';

// アプリクイズのページ
class AppQuizPageView extends StatelessWidget {
  final List<Quiz> quizes;
  final List<String> answers;
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
  final ThemeMode? mode;
  final int tatalScore;
  final AppInstallType installtype;
  final QuizTopicType quizTopicType;

  /// テキストの大きさが定義されている場合に適応する
  final AppTextSizeType? textType;

  const AppQuizPageView({
    Key? key,
    required this.quizes,
    required this.answers,
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
    this.mode,
    required this.installtype,
    required this.quizTopicType,
    this.textType,
    required this.tatalScore,
  }) : super(key: key);

  // 背景
  final _backGroundColor = const AppColorSet(type: AppColorType.background);

  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  // 影
  final _shadowColor = const AppColorSet(type: AppColorType.shadow);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor.color(mode),
      body: isFinished
          ? ResultPageWidget(
              speak: speak,
              quizes: quizes,
              answers: answers,
              isFavorites: isFavorites,
              scores: scores,
              count: count,
              totalScore: tatalScore,
              installtype: installtype,
              topicType: quizTopicType,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Quiz ${index + 1}',
                    style: TextStyles.xl(
                      color: _defaultColor.color(mode),
                      type: textType,
                    )),
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
                              color: _shadowColor.color(mode),
                              offset: Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          quiz.text,
                          textAlign: TextAlign.center,
                          style: TextStyles.xl(
                            type: textType,
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
                  height: context.mediaQueryHeight * .4,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: quiz.options.length,
                      itemBuilder: (context, index1) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
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
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: QuizNextButton(
                      next: next,
                      quizeCount: count,
                      isSelected: selected,
                      totalScore: tatalScore,
                      mode: mode,
                      textType: textType,
                    )),
              ],
            ),
    );
  }
}
