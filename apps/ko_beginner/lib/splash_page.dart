import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_system_info.dart';
import 'package:feature_setting/setting.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Provider
final settingProvider =
    StateNotifierProvider.autoDispose<SettingViewmodelInterface, SettingState>(
  (ref) {
    return SettingViewmodel(
      const SettingState(
        pushNotificationEnabled: false,
        themeMode: ThemeMode.light,
        textSize: AppTextSizeType.middle,
        appInstallType: AppInstallType.koreanBeginner,
      ),
      AppSystemInfo(),
    );
  },
);

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

      ref
          .watch(settingProvider.notifier)
          .changeAppInstallType(AppInstallType.koreanBeginner);

      // 2秒後にpushNamedを実行
      GoRouter.of(context).pushNamed(MyAppRouteConstraint.homeRouteName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.orenge_0,
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
