import 'package:core_enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

 part 'setting_state.freezed.dart';

/// N001.設定 状態クラス
@freezed
class SettingState with _$SettingState {
  /// コンストラクタ
  ///
  /// [pushNotificationEnabled] プッシュ通知設定有無
  /// [themeMode] 外観設定
  /// [textSize] 文字サイズ設定
  const factory SettingState({
    required bool pushNotificationEnabled,
    required ThemeMode themeMode,
    required AppTextSizeType textSize,
    required AppInstallType appInstallType,
  }) = _SettingState;
}
