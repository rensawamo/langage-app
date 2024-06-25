import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリ用ライフサイクル管理クラス
/// viewmodelにのみ継承できるよう制限
mixin AppLifeCicleListener<T> on StateNotifier<T> {
  /// BackGround → Foreground 復帰検知
  void onResume() {}

  /// Foreground → BackGround 停止検知
  void onPaused() {}

  /// Foreground ⇄ BackGround 切り替わり検知
  void inactive() {}

  /// アプリを落とした時
  void onDetached() {}
}
