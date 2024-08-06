import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:core_service/firebase_analitics/analytics_provider.dart';
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
    final analitics = ref.read(firebaseAnalyticsProvider);
    /// アプリ起動時のログを記録
    analitics.logAppOpen();
    // 2秒後に実行される処理
    Future.delayed(const Duration(seconds: 2), () {
      // contextが利用可能になった後でref.watchを呼び出す
      // 2秒後にpushNamedを実行
      WordTopicPageData().go(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              key: AppKeys.splash,
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Image.asset(isDarkMode
                  ? 'assets/images/national_dark.png'
                  : 'assets/images/national_flag.png'),
            ),
          ],
        ),
      ),
    );
  }
}
