import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/quiz_favorite/quiz_favorite_page_data.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    // 2秒後に実行される処理
    Future.delayed(const Duration(seconds: 2), () {
      // contextが利用可能になった後でref.watchを呼び出す

      // 2秒後にpushNamedを実行
      HomePageData().go(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Image.asset('assets/images/ko_national_flag.png'),
            ),
          ],
        ),
      ),
    );
  }
}
