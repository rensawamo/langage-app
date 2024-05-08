import 'package:core_enums/enums.dart';
import 'package:core_views/screens/quiz/quiz.dart';
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

  final List<dynamic> pages = <dynamic>[TopicPage(), Setting()];

  @override
  void initState() {
    super.initState();
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
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.account_tree),
                label: 'Mind Map',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: 'User',
              ),
            ],
            onTap: (int index) => <void>{
                  setState(() {
                    currentIndex = index;
                  })
                }),
      );
    });
  }
}
