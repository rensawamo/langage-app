import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [AppTextScale]を監視
/// [ThemeTextRepository] を提供する Provider
final themeTextRepositoryProvider =
    StateNotifierProvider<ThemeTextRepository, AppTextScale>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return ThemeTextRepository(prefsRepository);
});

extension TextScaleExtension on AppTextScale {
  TextScaler get factor {
    switch (this) {
      case AppTextScale.normal:
        return const TextScaler.linear(1);
      case AppTextScale.large:
        return const TextScaler.linear(1.08);
      case AppTextScale.xlarge:
        return const TextScaler.linear(1.17);
      default:
        return const TextScaler.linear(1);
    }
  }
}

/// テーマテキストを管理するクラス
class ThemeTextRepository extends StateNotifier<AppTextScale> {
  AppPrefsKey _scaleKey = AppPrefsKey.configFontScale;
  final SharedPreferencesRepository _prefsRepository;

  ThemeTextRepository(this._prefsRepository) : super(AppTextScale.normal) {
    loadScale();
  }
  Future<AppTextScale> loadScale() async {
    final scaleIndex =
        _prefsRepository.fetch<int>(_scaleKey) ?? AppTextScale.normal.index;
    state = AppTextScale.values[scaleIndex];
    return state;
  }

  Future<void> setScale(AppTextScale scale) async {
    state = scale;
    await _prefsRepository.save<int>(_scaleKey, scale.index);
  }
}
