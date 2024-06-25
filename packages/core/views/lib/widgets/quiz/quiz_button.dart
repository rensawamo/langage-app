import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_enums/enums.dart';

import 'package:core_utility/utility.dart';


import 'package:flutter/material.dart';

class AppQuizbuttonWidget extends StatefulWidget {
  const AppQuizbuttonWidget({
    Key? key,
    required this.selectAns,
    required this.quiz,
    required this.ans_ind,
    required this.selected,
    required this.selected_ind,
    this.textType,
  }) : super(key: key);

  final Function selectAns;
  final Quiz quiz;
  final bool selected;
  final int ans_ind;
  final int selected_ind;
  final AppTextSizeType? textType;

  @override
  ___buttonWidgetState createState() => ___buttonWidgetState();
}

class ___buttonWidgetState extends State<AppQuizbuttonWidget>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval((1 / widget.quiz.options.length) * widget.ans_ind, 1.0,
            curve: Curves.fastOutSlowIn)));
    animationController?.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// 問題に正解したときの色
    final _collctColor = const AppColorSet(type: AppColorType.collectAnswer);

    /// 問題にミス回答したときの色
    final _wrongColor = const AppColorSet(type: AppColorType.wrongAnswer);

    final _quizTileColor = const AppColorSet(type: AppColorType.quizTile);

    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          int ans_ind = widget.ans_ind;

          return FadeTransition(
            opacity: animation!,
            child: Transform(
              transform: Matrix4.translationValues(
                  0, 100 * (1.0 - animation!.value), 0.0),
              child: Container(
                // width: 400,
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: ListTile(
                  title: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: widget.selected // 選択済み
                          ? (widget.quiz.options[ans_ind].isCorrect // 正解
                              ? MaterialStateProperty.all<Color>(// 正解の色
                                  _collctColor.color())
                              : (widget.selected_ind == ans_ind // 選択済みだが不正解
                                  ? MaterialStateProperty.all<Color>(
                                      _wrongColor.color()) // 不正解の色
                                  : MaterialStateProperty.all<Color>(
                                      Color.fromARGB(255, 152, 149, 148))))
                          : MaterialStateProperty.all<Color>(
                              _quizTileColor.color(),
                            ), // 未選択
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        widget.quiz.options[ans_ind].text,
                        textAlign: TextAlign.center,
                        style: TextStyles.xl(
                          color: Color(0xFFFFFFFF),
                          type: widget.textType,
                        ),
                      ),
                    ),
                    onPressed: () {
                      widget.selectAns(widget.ans_ind,
                          widget.quiz.options[ans_ind].isCorrect);
                    },
                  ),
                ),
              ),
            ),
          );
        });
  }
}
