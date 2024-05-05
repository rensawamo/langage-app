import 'package:core_enums/enums.dart';
import 'package:core_views/screens/setting/setting_state.dart';
import 'package:core_views/utility/app_setting_info.dart';
import 'package:core_views/utility/app_system_info.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// N001.設定 viewmodel
class SettingViewmodel extends SettingViewmodelInterface
    with AppLifeCicleListener {
  /// アプリシステム管理クラス
  final AppSystemInfo systemInfo;

  /// コンストラクタ
  ///
  /// [state]で初期状態をセット
  /// [systemInfo]アプリシステム管理クラス
  SettingViewmodel(
    super.state,
    this.systemInfo,
  );

  /// 初期設定
  ///
  /// 端末のpush通知設定,テーマモード,文字サイズを取得しstateに設定する.
  /// ライフサイクルの設定を行う.
  @override
  Future<void> init() async {
    // ライフサイクルの検知登録
    addObserver();

    // アプリ設定取得
    final themeMode = AppSettingInfo().themeMode;
    final textSize = AppSettingInfo().textSizeType;

    // state設定
    state = state.copyWith(themeMode: themeMode, textSize: textSize);
  }

  /// テーマモードの変更
  @override
  void changeThemeMode(ThemeMode mode) {
    AppSettingInfo().changeTheme(mode);
    state = state.copyWith(themeMode: mode);
  }

  /// テキストサイズの変更
  @override
  void changeTextSize(AppTextSizeType sizeType) {
    AppSettingInfo().changeTextSize(sizeType);
    state = state.copyWith(textSize: sizeType);
  }

  /// ライフサイクルの検知登録
  @override
  void addObserver() {
    systemInfo.setLifecycleListener(this);
  }

  /// ライフサイクルの検知解除
  @override
  void removeObserver() {
    systemInfo.removeLifecycleListener();
  }

  /// アプリが復帰した場合
  @override
  void onResume() async {
    // プッシュチップ更新
    compResume();
  }
}

/// N001.設定 viewmodelインターフェース
abstract class SettingViewmodelInterface extends StateNotifier<SettingState> {
  SettingViewmodelInterface(super.state);
  Future<void> init();

  /// 復帰処理完了コールバック
  late Future<void> Function() compResume;

  void changeThemeMode(ThemeMode mode);
  void changeTextSize(AppTextSizeType sizeType);
  void addObserver();
  void removeObserver();
}
