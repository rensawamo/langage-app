import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeTextRepositoryProvider =
    StateNotifierProvider<ThemeTextRepositoryImpl, AppTextScale>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return ThemeTextRepositoryImpl(prefsRepository);
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

class ThemeTextRepositoryImpl extends StateNotifier<AppTextScale>
    implements ThemeTextRepository {
  AppPrefsKey _scaleKey = AppPrefsKey.configFontScale;
  final SharedPreferencesRepository _prefsRepository;

  ThemeTextRepositoryImpl(this._prefsRepository) : super(AppTextScale.normal) {
    loadScale();
  }

  Future<AppTextScale> loadScale() async {
    final scaleIndex =
        _prefsRepository.fetch(_scaleKey) ?? AppTextScale.normal.index;
    state = AppTextScale.values[scaleIndex];
    return state;
  }

  Future<void> setScale(AppTextScale scale) async {
    state = scale;
    await _prefsRepository.save(_scaleKey, scale.index);
  }
}

// テーマカラーを管理するクラスのインターフェース
abstract class ThemeTextRepository {
  // テーマカラーを設定する
  Future<void> setScale(AppTextScale scale);
  // テーマカラーを読み込む
  Future<AppTextScale> loadScale();
}
