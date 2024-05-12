import 'package:core_enums/enums.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite.dart';
import 'package:core_views/screens/setting/setting.dart';
import 'package:core_views/screens/topic/topic.dart';
import 'package:core_views/utility/app_color_set.dart';
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

  /// ステータス・アプリバーの背景色
  final _appbarColor = const AppColorSet(type: AppColorType.appbar);

  /// セレクトされているときの色
  final _charactorColor = const AppColorSet(type: AppColorType.reverseColor);

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            unselectedItemColor: _charactorColor.color(widget.mode),
            selectedItemColor: Colors.black,
            backgroundColor: _appbarColor.color(widget.mode),
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '問題',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'お気に入り',
              ),
              const BottomNavigationBarItem(
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
