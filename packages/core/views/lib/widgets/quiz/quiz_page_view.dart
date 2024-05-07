import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/quiz/quiz_button.dart';
import 'package:core_views/widgets/quiz/quiz_next_button.dart';
import 'package:core_views/widgets/quiz/quiz_progress_bar.dart';
import 'package:flutter/material.dart';

// アプリクイズのページ
class AppQuizPageView extends StatelessWidget {
  final int index;
  final Function selectAns;
  final Function next;
  final Function speak;
  final Quiz quiz;
  final int count;
  final bool selected;
  final int selected_ind;
  final ThemeMode? mode;

  /// テキストの大きさが定義されている場合に適応する
  final AppTextSizeType? textType;

  const AppQuizPageView({
    Key? key,
    required this.index,
    required this.selectAns,
    required this.next,
    required this.speak,
    required this.quiz,
    required this.count,
    required this.selected,
    required this.selected_ind,
    this.mode,
    this.textType,
  }) : super(key: key);

  // 問題の文字の色
  final _titleCharacterColor =
      const AppColorSet(type: AppColorType.titleCharacter);

  final _pageTitleColor = const AppColorSet(type: AppColorType.pageTitle);

  // 背景
  final _backGroundColor = const AppColorSet(type: AppColorType.background);

  // 影
  final _shadowColor = const AppColorSet(type: AppColorType.shadow);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EBE1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: _backGroundColor.color(mode),
        title: Text(
          'Question ${index + 1}',
          style: TextStyles.l(
            color: _pageTitleColor.color(mode),
            type: textType,
          ),
        ),
      ),
      body: Column(
        children: [
          progressBar(count: count,index: index),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
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
                      color: _titleCharacterColor.color(mode),
                      type: textType,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () async {
                      await speak(quiz.text);
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: context.mediaQueryHeight * .035,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: quiz.options.length,
              itemBuilder: (context, index1) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
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
          SizedBox(
            height: context.mediaQueryHeight * .01,
          ),
          // next button
          CuteButton(
            next: next,
            mode: mode,
            textType: textType,
          ),
        ],
      ),
    );
  }
}
