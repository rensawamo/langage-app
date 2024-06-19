import 'package:core_enums/enums.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite.dart';
import 'package:core_views/screens/topic/topic.dart';
import 'package:core_views/screens/wordlist/word_list.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:feature_setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.mode}) : super(key: key);

  final ThemeMode? mode;

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int currentIndex = 0;

  final List<dynamic> pages = <dynamic>[
    WordList(dropDownMenu: {
      '単語': QuizTopicType.word,
      '挨拶': QuizTopicType.greet,
    }),
    TopicPage(),
    QuizFavorite(dropDownMenu: {
      '単語': QuizTopicType.word,
      '挨拶': QuizTopicType.greet,
    }),
    Setting()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// セレクトされているときの色
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  // タブバーの文字の色
  final _appberColor = const AppColorSet(type: AppColorType.appbar);

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            unselectedItemColor: _defaultColor.color(widget.mode),
            selectedItemColor: _defaultColor.color(widget.mode),
            backgroundColor: _appberColor.color(widget.mode),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: '単語一覧',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                label: '問題',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'お気に入り',
              ),
              // 新しいBottomNavigationBarItemを追加
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '設定',
              ),
            ],
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            }),
      );
    });
  }
}
