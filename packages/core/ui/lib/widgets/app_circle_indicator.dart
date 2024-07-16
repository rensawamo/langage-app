
import 'package:flutter/material.dart';

/// サークルインジケータを表示するWidget
class AppCircleIndicator extends StatelessWidget {
  /// コンストラクタ
  ///
  /// テーマモードが固定の場合は[mode]で指定する
  const AppCircleIndicator({
    super.key,
  });

  /// テーマを固定したい場合に指定する

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.transparent,
    );
  }
}
