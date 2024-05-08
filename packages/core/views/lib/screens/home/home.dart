import 'package:core_constants/constants.dart';
import 'package:core_model/model.dart';
import 'package:core_views/screens/quiz/quiz.dart';
import 'package:core_views/screens/setting/setting.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int currentIndex = 0;

  final List<dynamic> pages = <dynamic>[QuizPage(), Setting()];

  @override
  void initState() {
    super.initState();
  }

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            backgroundColor: Colors.blue,
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
