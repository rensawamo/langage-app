import 'package:core_constants/constants.dart';
import 'package:core_model/model.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:flutter/material.dart';

class AppQuizbuttonWidget extends StatefulWidget {
  const AppQuizbuttonWidget({
    Key? key,
    required this.selectAns,
    required this.quiz,
    required this.ans_ind,
    required this.selected,
    required this.selected_ind,
    this.mode,
  }) : super(key: key);
  final Function selectAns;
  final Quiz quiz;
  final bool selected;
  final int ans_ind;
  final int selected_ind;
  final ThemeMode? mode;

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
    /// ボタンタップ時のエフェクトの色(ボタンのレイアウトがError)
    final _colorSet1 = const AppColorSet(
      light: Color.fromARGB(31, 82, 70, 72),
      dark: Color.fromARGB(31, 82, 70, 72),
    );

    /// 問題に正解したときの色
    /// ダークモードでも light の色を使用する
    final _colorSet2 = const AppColorSet(
      light: AppColors.red_10,
      dark: AppColors.red_10,
    );

    /// 問題にミス回答したときの色
    /// ダークモードでも light の色を使用する
    final _colorSet3 = const AppColorSet(
      light: AppColors.red_10,
      dark: AppColors.red_10,
    );

    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          int ind = widget.ans_ind;

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
                      backgroundColor: widget.selected
                          ? (widget.quiz.options[ind].isCorrect
                              ? MaterialStateProperty.all<Color>(
                                  _colorSet2.color(widget.mode))
                              : (widget.selected_ind == ind
                                  ? MaterialStateProperty.all<Color>(
                                      _colorSet2.color(widget.mode))
                                  : MaterialStateProperty.all<Color>(
                                      Color.fromARGB(255, 152, 149, 148))))
                          : MaterialStateProperty.all<Color>(Color(0xffEDA276)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        widget.quiz.options[ind].text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          letterSpacing: -0.1,
                          color: Color(0xFFFAFAFA).withOpacity(0.9),
                        ),
                      ),
                    ),
                    onPressed: () {
                      widget.selectAns(
                          widget.ans_ind, widget.quiz.options[ind].isCorrect);
                    },
                  ),
                ),
              ),
            ),
          );
        });
  }
}
