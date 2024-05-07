import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_setting_info.dart';
import 'package:flutter/material.dart';

///アプリケーションカラーの定数クラス

class AppColors {
  static AppInstallType _appInstallType = AppSettingInfo().appInstallType;

  // Red Palette
  static const Color red100 = Color(0xFFFF0000);
  static const Color red87 = Color(0xDEFF0000);
  static const Color red60 = Color(0x99FF0000);
  static const Color red38 = Color(0x61FF0000);


  static Color getColor(ThemeMode? mode, AppColorType type) {
    switch (type) {
      // アプリのバーの色
      case AppColorType.appbar:
        switch (mode ?? AppSettingInfo().themeMode) {
          case ThemeMode.light:
            return const Color(0xFF0000FF);
          case ThemeMode.dark:
            return red100;
          case ThemeMode.system:
            return const Color(0xFF0000FF);
        }
      case AppColorType.background:
        return const Color(0x1A0000FF);
      default:
        throw Exception("Unsupported AppInstallType: $_appInstallType");
    }
  }

  // 青色パレット
  static const Color blue_100 = Color(0xFF0000FF);
  static const Color blue_87 = Color(0xDE0000FF);
  static const Color blue_60 = Color(0x990000FF);
  static const Color blue_38 = Color(0x610000FF);
  static const Color blue_10 = Color(0x1A0000FF);

  // 黄色パレット
  static const Color yellow_100 = Color(0xFFFFFF00);
  static const Color yellow_87 = Color(0xDEFFFF00);
  static const Color yellow_60 = Color(0x99FFFF00);
  static const Color yellow_38 = Color(0x61FFFF00);
  static const Color yellow_10 = Color(0x1AFFFF00);

  // 緑色パレット
  static const Color green_100 = Color(0xFF008000);
  static const Color green_87 = Color(0xDE008000);
  static const Color green_60 = Color(0x99008000);
  static const Color green_38 = Color(0x61008000);
  static const Color green_10 = Color(0x1A008000);

  // 黄緑色パレット
  static const Color lime_100 = Color(0xFF00FF00);
  static const Color lime_87 = Color(0xDE00FF00);
  static const Color lime_60 = Color(0x9900FF00);
  static const Color lime_38 = Color(0x6100FF00);
  static const Color lime_10 = Color(0x1A00FF00);

  // オレンジ色パレット
  static const Color orange_100 = Color(0xFFFFA500);
  static const Color orange_87 = Color(0xDEFFA500);
  static const Color orange_60 = Color(0x99FFA500);
  static const Color orange_38 = Color(0x61FFA500);
  static const Color orange_10 = Color(0x1AFFF500);
  static const Color orenge_0 = Color(0xffF7EBE1);
  // グレー色パレット
  static const Color gray_100 = Color(0xFF808080);
  static const Color gray_87 = Color(0xDE808080);
  static const Color gray_60 = Color(0x99808080);
  static const Color gray_38 = Color(0x61808080);
  static const Color gray_10 = Color(0x1A808080);

  // 紫色パレット
  static const Color purple_100 = Color(0xFF800080);
  static const Color purple_87 = Color(0xDE800080);
  static const Color purple_60 = Color(0x99800080);
  static const Color purple_38 = Color(0x61800080);
  static const Color purple_10 = Color(0x1A800080);
}
