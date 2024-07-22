import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/repository.dart';
import 'package:core_router/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeColorRepositoryProvider);
    final textScale = ref.watch(themeTextRepositoryProvider);
    final appSettingInfo = ref.read(appSettingInfoProvider.notifier);
    final tts = ref.read(ttsRepositoryProvider);
    // 韓国語初級アプリの設定を変更
    appSettingInfo.changeAppInstallType(AppInstallType.koreanBeginner);
    // TTSの初期化
    tts.initializeTts();
    return MaterialApp.router(
      title: 'korean_beginner',
      theme: getAppTheme(),
      darkTheme: getAppThemeDark(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: textScale.factor,
          ),
          child: child!,
        );
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', ''),
        Locale('en', ''),
      ],
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
