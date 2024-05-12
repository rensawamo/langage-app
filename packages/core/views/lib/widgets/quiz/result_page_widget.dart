import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/extension/view+extention.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EBE1),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Your Score',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              height: context.mediaQueryHeight * .6,
              width: context.mediaQueryWidth * .9,
              child: ListView.builder(
                itemCount: widget.quizes.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(widget.quizes[index].text),
                        ),
                        Expanded(
                          child: Text(
                            widget.scores[index] == null
                                ? "未回答"
                                : widget.scores[index]!
                                    ? '正解'
                                    : '不正解',
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.play_arrow),
                            onPressed: () async {
                              await widget.speak(widget.quizes[index].text);
                            },
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () async {
                              await QuizFavoriteSql.insert(
                                  widget.quizes[index].text,
                                  widget.topicType.name,
                                  widget.installtype.name);
                              setState(() {
                                isFavorites[index] = true;
                              });
                            },
                            icon: (isFavorites[index])
                                ? Icon(Icons.star)
                                : Icon(Icons.star_border),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Text(
                '${widget.totalScore} / ${widget.quizes.length}',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Container(
                    // height: 58,
                    padding: EdgeInsets.only(
                      left: 48.0,
                      right: 48.0,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff132137),
                    ),
                    child: Text(
                      "トピックに戻る",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
