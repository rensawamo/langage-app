import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
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
      required this.isFavorites,
      required this.scores,
      required this.installtype,
      required this.topicType,
      this.mode,
      this.textType,
      Key? key})
      : super(key: key);

  final Function speak;
  final int totalScore;
  final int count;
  final List<Quiz> quizes;
  final List<bool> isFavorites;
  final List<bool?> scores;
  final AppInstallType installtype;
  final QuizTopicType topicType;
  final ThemeMode? mode;
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

  final _defaultColor = const AppColorSet(type: AppColorType.titleCharacter);
  final _reverseColor = const AppColorSet(type: AppColorType.reverseColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: AppText(
            text: "結果 ${widget.totalScore} / ${widget.count}",
            style: TextStyles.l(
              color: _defaultColor.color(widget.mode),
              type: widget.textType,
            ),
          ),
        ),
        SizedBox(
          height: context.mediaQueryHeight * .025,
        ),
        _table(),
        SizedBox(
          height: context.mediaQueryHeight * .035,
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
                color: _defaultColor.color(widget.mode),
              ),
              child: Text(
                "トピックに戻る",
                style: TextStyle(
                  fontSize: 18,
                  color: _reverseColor.color(widget.mode),
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
                                widget.quizes[index].text, index)),
                        TableCell(
                            child: _buildSubtitleCell(
                                widget.scores[index]?.toString() ?? '未回答',
                                index)),
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
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => widget.speak(widget.quizes[index].text),
        ),
      );

  Widget _buildFavoriteCell(int index) => Container(
        height: 65,
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
            isFavorites[index] ? Icons.star : Icons.star_border,
            color: Colors.yellow[700],
          ),
          onPressed: () async => {
            setState(() => isFavorites[index] = !isFavorites[index]),
            isFavorites[index]
                ? await QuizFavoriteSql.delete(widget.quizes[index].text,
                    widget.topicType.name, widget.installtype.name)
                : await QuizFavoriteSql.insert(widget.quizes[index].text,
                    widget.topicType.name, widget.installtype.name),
          },
        ),
      );

  Widget _buildCell(String text) => Container(
        height: 58,
        
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyles.xs(
              color: _defaultColor.color(widget.mode),
              type: widget.textType,
            )),
      );

  Widget _buildSubtitleCell(String text, int index) => Container(
        height: 65,
        width: 160,
        padding: const EdgeInsets.all(8),
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        alignment: Alignment.center,
        child: Text(text, style: TextStyle(color: Colors.black)),
      );
}
