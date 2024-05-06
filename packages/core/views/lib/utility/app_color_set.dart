import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:flutter/material.dart';

/// アプリカラー設定
class AppColorSet {
  /// コンストラクタ
  ///
  /// [type]  どこの色を指定するか
  const AppColorSet({
    required this.type,
  });

  final AppColorType type;

  /// テーマの色を取得する
  ///
  /// [mode] ThemeModeをセット
  Color color(
    ThemeMode? mode,
  ) {
    // settingと アプリの種類に適応した色を返す
    return AppColors.getColor(mode, type);
  }
}
