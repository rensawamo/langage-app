import 'dart:async';

import 'package:core_constants/constants.dart';
import 'package:core_utility/utility/app_life_cycle_listener.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// アプリ内の設定を管理するShared Instance
class AppSystemInfo {
  /// 共通インスタンス
  static final AppSystemInfo _shared = AppSystemInfo._internal();

  /// コンストラクタ
  AppSystemInfo._internal();

  /// singletonパターンを実現するためのfactoryコンストラクタ
  factory AppSystemInfo() => _shared;

  /// ロック中かどうか
  var _isAppLocked = false;

  /// OS機能操作中かどうか
  var _systemOperation = false;

  /// アプリがポーズ状態であるか
  var _isPaused = false;

  /// ライフサイクルリスナーオブジェクト
  AppLifeCicleListener? _appLifeCicleListener;

  /// Getter: isLocked
  bool get isLocked => _isAppLocked;

  /// Getter: isSystemOperating
  bool get isOperating => _systemOperation;

  /// Getter: _isPaused
  bool get isPaused => _isPaused;

  /// Getter: appLifeCicleListener
  AppLifeCicleListener? get appLifeCicleListener => _appLifeCicleListener;

  /// ロックをかけるかどうか
  bool isLock = false;

  /// リスナーをセットする
  void setLifecycleListener(AppLifeCicleListener listner) {
    _appLifeCicleListener = listner;
  }

  /// セットされているライフサイクルコールバックを削除する
  void removeLifecycleListener() => _appLifeCicleListener = null;

  /// セキュリティ解除する
  void appUnLock() {
    _isAppLocked = false;
    _systemOperation = false;
  }

  /// セキュリティロックする
  void appLock() {
    _isAppLocked = true;
    _systemOperation = true;
  }

  /// OS機能操作開始
  void beginOsOperation() {
    _systemOperation = true;
  }

  /// OS機能操作終了
  void finishedOsOperation() {
    _systemOperation = false;
  }

  /// アプリ一時停止
  void pause() => _isPaused = true;

  /// アプリ一時停止解除
  void unpause() => _isPaused = false;

  /// セキュア領域の破棄
  ///
  Future<void> clearSecureStorage() async {
    final pref = await SharedPreferences.getInstance();
    const secureStorage = FlutterSecureStorage();

    // キーが設定されていない場合、クリアする。
    if (!pref.containsKey(PrefsKey.hasSecure)) {
      await secureStorage.deleteAll();
      pref.setBool(PrefsKey.hasSecure, true);
      return;
    }
    // キーから値を取得して、true以外の場合はクリアする。
    final hasSecure = pref.getBool(PrefsKey.hasSecure);
    if (hasSecure == null || !hasSecure) {
      await secureStorage.deleteAll();
      pref.setBool(PrefsKey.hasSecure, true);
    }
  }

  /// バックグラウンドでの経過時間計測用タイマー
  Timer? _timer;

  /// タイマーの間隔(5分)
  final int _duration = 5;

  /// タイマー開始
  void timerCreate() {
    // ロックをかける設定OFF
    isLock = false;
    // 多重起動防止のため一度停止
    timerStop();

    // タイマー開始
    _timer = Timer(
      Duration(minutes: _duration),
      () {
        // ロックをかける設定ON
        isLock = true;
      },
    );
  }

  /// タイマー停止
  void timerStop() {
    _timer?.cancel();
    // ロックをかける設定OFF
    isLock = false;
  }
}
