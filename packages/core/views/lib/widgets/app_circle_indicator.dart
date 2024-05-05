import 'package:core_constants/constants.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

/// サークルインジケータを表示するWidget
class AppCircleIndicator extends StatelessWidget {
  /// コンストラクタ
  ///
  /// テーマモードが固定の場合は[mode]で指定する
  const AppCircleIndicator({
    super.key,
    this.mode,
  });

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// サークルインジケータの色
  final _colorSet1 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      color: _colorSet1.color(mode),
    );
  }
}
