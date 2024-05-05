import 'package:flutter/material.dart';
import 'app_setting_info.dart';

/// アプリカラー設定
class AppColorSet {
  /// コンストラクタ
  ///
  /// [light] ライトモード
  /// [dark] ダークモード
  const AppColorSet({
    required this.light,
    required this.dark,
  });

  /// ライトテーマカラー
  final Color light;

  /// ダークテーマカラー
  final Color dark;

  /// テーマの色を取得する
  ///
  /// [mode] ThemeModeをセット
  Color color(
    ThemeMode? mode,
  ) {
    // 任意のテーマをセットしない場合はAppSettingInfoの設定値を利用する
    switch (mode ?? AppSettingInfo().themeMode) {
      case ThemeMode.light:
        return light;
      case ThemeMode.dark:
        return dark;
      case ThemeMode.system:
        return light;
    }
  }
}
