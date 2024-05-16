import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:flutter/material.dart';

/// dividerを表示するWidget
class AppDivider extends StatelessWidget {
  /// 左端のインデントサイズ
  final double leftIndent;

  /// 右端のインデントサイズ
  final double rightIndent;

  /// コンストラクタ
  ///
  /// [leftIndent]で、左端のスペースを設定する
  /// [rightIndent]で、右端のスペースを設定する
  /// テーマモードが固定の場合は[mode]で指定する
  const AppDivider({
    super.key,
    this.leftIndent = 0,
    this.rightIndent = 0,
    this.mode,
  });

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// 下線の色
    final _splashColor = const AppColorSet(type: AppColorType.appbar);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 0.5,
      indent: leftIndent,
      endIndent: rightIndent,
      color: _splashColor.color(mode),
    );
  }
}
