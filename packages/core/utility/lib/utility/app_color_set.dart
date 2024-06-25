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
  
  Color color() {
    // settingと アプリの種類に適応した色を返す
    return AppColors.getColor(type);
  }
}
