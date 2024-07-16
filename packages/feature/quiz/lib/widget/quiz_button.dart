import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
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
  final quiz;
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
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: ListTile(
                  title: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: widget.selected // 選択済み
                          ? (widget.quiz.options[ans_ind].isCorrect // 正解
                              ? WidgetStateProperty.all<Color>(// 正解の色
                                  Colors.red)
                              : (widget.selected_ind == ans_ind // 選択済みだが不正解
                                  ? WidgetStateProperty.all<Color>(
                                      Colors.blue) // 不正解の色
                                  : WidgetStateProperty.all<Color>(
                                      Color.fromARGB(255, 152, 149, 148))))
                          : WidgetStateProperty.all<Color>(
                              AppColorsSet.getQuizTileColor(context)), // 未選択
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        widget.quiz.options[ans_ind].text,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body(context),
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
