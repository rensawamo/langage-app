import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [ThemeMode]を監視
/// [ThemeColorRepository] を提供する Provider
final themeColorRepositoryProvider = StateNotifierProvider<ThemeColorRepository, ThemeMode>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return ThemeColorRepository(prefsRepository);
});


/// [ThemeMode] を監視する StateNotifier
class ThemeColorRepository extends StateNotifier<ThemeMode> {
  final SharedPreferencesRepository _prefsRepository;
  final AppPrefsKey _themeKey = AppPrefsKey.configModeType;

  ThemeColorRepository(this._prefsRepository) : super(ThemeMode.light) {
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

