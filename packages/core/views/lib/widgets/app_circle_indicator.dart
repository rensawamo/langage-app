import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
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
  final _splashColor = const AppColorSet(type: AppColorType.appbar);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      color: _splashColor.color(mode),
    );
  }
}
