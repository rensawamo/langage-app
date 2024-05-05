import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

/// 画面読み込み等で使用するタイルWidget
class TileAnimationLoadingTile extends StatelessWidget {
  /// コンストラクタ
  ///
  /// テーマモードが固定の場合は[mode]で指定する
  const TileAnimationLoadingTile({
    super.key,
    this.mode,
  });

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 68,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: AppCircleIndicator(
          mode: mode,
        ),
      ),
    );
  }
}
