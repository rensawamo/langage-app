import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/widgets/app_quiz_button.dart';
import 'package:flutter/material.dart';

// アプリクイズのページ
class AppQuizPageView extends StatelessWidget {
  final int index;
  final Function selectAns;
  final Function speak;
  final Quiz quiz;
  final bool selected;
  final int selected_ind;
  final ThemeMode? mode;

  const AppQuizPageView({
    Key? key,
    required this.index,
    required this.selectAns,
    required this.speak,
    required this.quiz,
    required this.selected,
    required this.selected_ind,
    this.mode,
  }) : super(key: key);

  // 背景
  final _splashColor = const AppColorSet(type: AppColorType.appbar);

  /// メインテキストの色
  // final _colorSet2 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// サブテキストの色
  // final _colorSet3 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// 非活性状態のメイン・サブテキストの色
  // final _colorSet4 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EBE1),
      appBar: AppBar(
        backgroundColor: _splashColor.color(mode),
        title: Text('Question ${index + 1}',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: -0.1,
              color: Color(0xFFFAFAFA).withOpacity(0.9),
            )),
      ),
      body: Column(
        children: [
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
                        color: Color(0xFF3A5160).withOpacity(0.2),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () async {
                      print('speak');
                      await speak(quiz.text);
                    },
                  ),
                  SizedBox(width: 8), // アイコンとテキストの間にスペースを追加
                  Expanded(
                    child: Text(
                      quiz.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        letterSpacing: -0.1,
                        color: Color(0xFF253840).withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
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
        ],
      ),
    );
  }
}
