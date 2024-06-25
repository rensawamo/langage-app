import 'package:feature_setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPageData extends GoRouteData {
  const SettingPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingPage();
  }
}
