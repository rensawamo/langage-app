import 'package:core_views/views.dart';
import 'package:ko_beginner/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // アプリ起動時に設定情報を 韓国語初級 に変更して
  // アプリ設定情報を初期化

  await AppSettingInfo().setup();
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MyAppRoute().router,
    );
  }
}
