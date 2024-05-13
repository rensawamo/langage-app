import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: Color(0xffF7EBE1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
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
            height: context.mediaQueryHeight * .02,
          ),
          Container(
            width: context.mediaQueryWidth * .95,
            height: context.mediaQueryHeight * .6,
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Container(
                    width: context.mediaQueryWidth * .15,
                    child: Text(
                      'Quiz',
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: context.mediaQueryWidth * .1,
                    child: Text(
                      'Score',
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: context.mediaQueryWidth * .1,
                    child: Text(
                      'boice',
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: context.mediaQueryWidth * .1,
                    child: Text(
                      'star',
                    ),
                  ),
                ),
              ],
              // 以下省略...

              rows: List<DataRow>.generate(
                widget.quizes.length,
                (index) => DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        width: context.mediaQueryWidth * .22,
                        child: Text(
                          widget.quizes[index].text,
                          style: TextStyles.m(
                            color: _defaultColor.color(widget.mode),
                            type: widget.textType,
                          ),
                        ),
                      ),
                    ),
                    DataCell(Container(
                      width: context.mediaQueryWidth * .1,
                      child: Text(
                        widget.scores[index] == null
                            ? "未回答"
                            : widget.scores[index]!
                                ? '正解'
                                : '不正解',
                        style: TextStyles.s(
                          color: _defaultColor.color(widget.mode),
                          type: widget.textType,
                        ),
                      ),
                    )),
                    DataCell(Container(
                      width: context.mediaQueryWidth * .1,
                      child: IconButton(
                        icon: Icon(Icons.volume_up),
                        onPressed: () async {
                          await widget.speak(widget.quizes[index].text);
                        },
                      ),
                    )),
                    DataCell(
                      Container(
                        width: context.mediaQueryWidth * .1,
                        child: IconButton(
                          onPressed: () async {
                            (isFavorites[index])
                                ? await QuizFavoriteSql.delete(
                                    widget.quizes[index].text,
                                    widget.topicType.name,
                                    widget.installtype.name)
                                : await QuizFavoriteSql.insert(
                                    widget.quizes[index].text,
                                    widget.topicType.name,
                                    widget.installtype.name);
                            setState(() {
                              isFavorites[index] = true;
                            });
                          },
                          icon: (isFavorites[index])
                              ? Icon(
                                  Icons.star,
                                )
                              : Icon(Icons.star_border),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.mediaQueryHeight * .07,
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
          ))
        ],
      ),
    );
  }
}
