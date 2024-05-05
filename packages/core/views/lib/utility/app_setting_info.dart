import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// アプリ内の設定を管理する
class AppSettingInfo {
  /// 共通インスタンス
  static final AppSettingInfo _shared = AppSettingInfo._internal();

  /// コンストラクタ
  AppSettingInfo._internal();

  /// singletonパターンを実現するためのfactoryコンストラクタ
  factory AppSettingInfo() => _shared;

  /// 現在の文字サイズ種別
  AppTextSizeType _textSizeType = AppTextSizeType.middle;

  /// 現在のアプリテーマ
  ThemeMode _themeMode = ThemeMode.light;

  /// 最後に表示していた診察券ページindex値
  int? lastViewedPatientCardIndex = 0;

  /// Getter: textSizeType
  AppTextSizeType get textSizeType => _textSizeType;

  /// Getter: themeMode
  ThemeMode get themeMode => _themeMode;

  /// 文字サイズ変更
  Future<void> changeTextSize(AppTextSizeType type) async {
    final pref = await SharedPreferences.getInstance();
    // 端末内に保存
    await pref.setInt(PrefsKey.configFontScale, type.index);
    _textSizeType = type;
  }

  /// テーマ変更
  Future<void> changeTheme(ThemeMode mode) async {
    final pref = await SharedPreferences.getInstance();
    // 端末内に保存
    await pref.setInt(PrefsKey.configModeType, mode.index);
    _themeMode = mode;
  }

  /// 端末内に保存された情報を読み込んで適用する
  Future<void> setup() async {
    final pref = await SharedPreferences.getInstance();

    /// 文字サイズ情報取得
    if (pref.containsKey(PrefsKey.configFontScale)) {
      final type = pref.getInt(PrefsKey.configFontScale);
      if (type != null) {
        _textSizeType = AppTextSizeType.values[type];
      }
    }

    /// テーマ取得
    if (pref.containsKey(PrefsKey.configModeType)) {
      final mode = pref.getInt(PrefsKey.configModeType);
      if (mode != null) {
        _themeMode = ThemeMode.values[mode];
      }
    }
  }
}
