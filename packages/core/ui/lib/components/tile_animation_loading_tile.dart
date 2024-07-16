import 'package:core_ui/ui.dart';
import 'package:flutter/material.dart';

/// 画面読み込み等で使用するタイルWidget
class TileAnimationLoadingTile extends StatelessWidget {
  /// コンストラクタ
  ///
  const TileAnimationLoadingTile({
    super.key,
  });

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 68,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: AppCircleIndicator(),
      ),
    );
  }
}
