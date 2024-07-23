import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [ThemeColorRepository]のProvider
/// [SharedPreferencesRepository] を引数に取り、アプリのテーマカラーを取得する
///
final themeColorRepositoryProvider =
    StateNotifierProvider<ThemeColorRepositoryImpl, ThemeMode>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return ThemeColorRepositoryImpl(prefsRepository);
});

/// [ThemeColorRepository] の具象クラス
class ThemeColorRepositoryImpl extends StateNotifier<ThemeMode>
    implements ThemeColorRepository {
  final SharedPreferencesRepository _prefsRepository;
  final AppPrefsKey _themeKey = AppPrefsKey.configModeType;

  ThemeColorRepositoryImpl(this._prefsRepository) : super(ThemeMode.light) {
    loadTheme();
  }

  Future<void> loadTheme() async {
    final themeIndex =
        _prefsRepository.fetch<int>(_themeKey) ?? ThemeMode.light.index;

    state = ThemeMode.values[themeIndex];
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    state = themeMode;
    await _prefsRepository.save<int>(_themeKey, themeMode.index);
  }
}

/// [ThemeMode] の設定監視する Repository
abstract class ThemeColorRepository {
  //  テーマカラーを設定する
  Future<void> setTheme(ThemeMode themeMode);
  // テーマカラーを読み込む
  Future<void> loadTheme();
}
