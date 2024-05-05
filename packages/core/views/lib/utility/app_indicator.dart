import 'package:core_views/components/tile_animation_loading_tile.dart';
import 'package:flutter/material.dart';


/// インジケータのUtilityクラス
class AppIndicator {
  // ダイアログの表示状態
  static bool _isDisplay = false;

  /// サークルインジケータを表示する
  ///
  /// 使用する画面のBuildContextを[context]にセットする
  static void show(BuildContext context) {
    if (!_isDisplay) {
 
      // ダイアログを重複表示させないように反転させる
      _isDisplay = !_isDisplay;
      // ダイアログにサークルインジケータをのせて表示する
      showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.transparent,
        builder: (_) => const PopScope(
          canPop: false,
          child: TileAnimationLoadingTile(),
        ),
      );
    }
  }

  /// サークルインジケータを非表示にする
  ///
  /// 使用する画面のBuildContextを[context]にセットする
  static void hide(BuildContext context) {
    if (_isDisplay) {
      // ダイアログを閉じる
      Navigator.of(context).pop();
      // 再びダイアログを表示できるように元に戻す
      _isDisplay = !_isDisplay;
    }
  }
}
