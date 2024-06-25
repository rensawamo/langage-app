import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_enums/enums.dart';

import 'package:core_sql/sql.dart';
import 'package:core_utility/utility.dart';

import 'package:core_views/extension/view+extention.dart';

import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ResultPageWidget extends StatefulWidget {
  const ResultPageWidget(
      {required this.speak,
      required this.totalScore,
      required this.count,
      required this.quizes,
      required this.answers,
      required this.isFavorites,
      required this.scores,
      required this.installtype,
      required this.topicType,
      this.textType,
      Key? key})
      : super(key: key);

  final Function speak;
  final int totalScore;
  final int count;
  final List<Quiz> quizes;
  final List<String> answers;
  final List<bool> isFavorites;
  final List<bool?> scores;
  final AppInstallType installtype;
  final QuizTopicType topicType;
  final AppTextSizeType? textType;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPageWidget> {
  late List<bool> isFavorites;
  @override
  void initState() {
    isFavorites = List<bool>.from(widget.isFavorites);
    super.initState();
  }

  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);
  final _backGroundColor = const AppColorSet(type: AppColorType.background);
  // トピックへ戻る
  final _nextButtonColor = const AppColorSet(type: AppColorType.nextButton);

  // 表の タイトルの背景色
  final _cellTitleColor = const AppColorSet(type: AppColorType.cellTitle);

  // 表の奇数時の背景色
  final _cellOddColor = const AppColorSet(type: AppColorType.cellOdd);
  // 表の偶数時の背景色
  final _cellEvenColor = const AppColorSet(type: AppColorType.cellEven);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backGroundColor.color(),
        body: Column(
          children: [
            SizedBox(
              height: context.mediaQueryHeight * .025,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppText(
                text: "結果 ${widget.totalScore} / ${widget.count}",
                style: TextStyles.xl(
                  color: _defaultColor.color(),
                  type: widget.textType,
                ),
              ),
            ),
            SizedBox(
              height: context.mediaQueryHeight * .025,
            ),
            _table(),
            SizedBox(
              height: context.mediaQueryHeight * .04,
            ),
            Container(
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 48.0,
                    right: 48.0,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _nextButtonColor.color(),
                  ),
                  child: Text(
                    "トピックに戻る",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _table() {
    return Center(
        child: Container(
      width: context.mediaQueryWidth * .95,
      height: context.mediaQueryHeight * .65,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical, // 垂直方向のスクロールを有効にする
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: _buildCell('Quiz'),
                ),
                TableCell(child: _buildCell('Answer')),
                TableCell(child: _buildCell('Score')),
                TableCell(child: _buildCell('Voice')),
                TableCell(child: _buildCell('Star')),
              ],
            ),
            ...List.generate(
                widget.quizes.length,
                (index) => TableRow(
                      children: [
                        TableCell(
                            child: _buildSubtitleCell(
                                widget.quizes[index].text, index)),
                        TableCell(
                            child: _buildSubtitleCell(
                                widget.answers[index], index)),
                        TableCell(
                          child: _buildSubtitleCell(
                            widget.scores[index] == null
                                ? '未回答'
                                : widget.scores[index] == true
                                    ? '正解'
                                    : '不正解',
                            index,
                          ),
                        ),
                        TableCell(child: _buildVoiceCell(index)),
                        TableCell(child: _buildFavoriteCell(index)),
                      ],
                    )),
          ],
        ),
      ),
    ));
  }

  Widget _buildVoiceCell(int index) => Container(
        height: 65,
        color: index % 2 == 0 ? _cellOddColor.color() : _cellEvenColor.color(),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => widget.speak(widget.quizes[index].text),
        ),
      );

  Widget _buildFavoriteCell(int index) => Container(
        height: 65,
        color: index % 2 == 0 ? _cellOddColor.color() : _cellEvenColor.color(),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
            isFavorites[index] ? Icons.star : Icons.star_border,
            color: Colors.yellow[700],
          ),
          onPressed: () async {
            if (isFavorites[index]) {
              await QuizFavoriteSql.delete(
                  widget.quizes[index].text, widget.installtype.name);
            } else {
              await QuizFavoriteSql.insert(
                  widget.quizes[index].text,
                  widget.answers[index],
                  widget.topicType.name,
                  widget.installtype.name);
            }
            setState(() => isFavorites[index] = !isFavorites[index]);
          },
        ),
      );

  Widget _buildCell(
    String text,
  ) =>
      Container(
        padding: const EdgeInsets.all(8),
        height: 58,
        color: _cellTitleColor.color(),
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyles.s(
              color: _defaultColor.color(),
              type: widget.textType,
            )),
      );

  Widget _buildSubtitleCell(String text, int index) => Container(
      height: 65,
      padding: const EdgeInsets.all(8),
      color: index % 2 == 0 ? _cellOddColor.color() : _cellEvenColor.color(),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyles.s(
          color: text == '正解'
              ? Colors.red
              : text == '不正解'
                  ? Colors.blue
                  : _defaultColor.color(),
          type: widget.textType,
        ),
      ));
}
