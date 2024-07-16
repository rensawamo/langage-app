import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:core_utility/utility.dart';

final textScalerProvider =
    StateNotifierProvider<TextScalerNotifier, AppTextScale>(
  (ref) => TextScalerNotifier(),
);

extension TextScaleExtension on AppTextScale {
  TextScaler get factor {
    switch (this) {
      case AppTextScale.normal:
        return TextScaler.linear(1);
      case AppTextScale.large:
        return TextScaler.linear(1.1);
      case AppTextScale.xlarge:
        return TextScaler.linear(1.2);

      default:
        return TextScaler.linear(1);
    }
  }
}

class TextScalerNotifier extends StateNotifier<AppTextScale> {
  static const String _scaleKey = PrefsKey.configFontScale;

  TextScalerNotifier() : super(AppTextScale.normal) {
    _loadScale();
  }

  Future<void> _loadScale() async {
    final prefs = await SharedPreferences.getInstance();
    final scaleIndex = prefs.getInt(_scaleKey) ?? AppTextScale.normal.index;
    logger.d('scaleIndex: $scaleIndex');
    state = AppTextScale.values[scaleIndex];
  }

  Future<void> setScale(AppTextScale scale) async {
    state = scale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_scaleKey, scale.index);
  }

  Future<void> toggleScale() async {
    print(state);
    switch (state) {
      case AppTextScale.normal:
        setScale(AppTextScale.large);
        break;
      case AppTextScale.large:
        setScale(AppTextScale.xlarge);
        break;
      case AppTextScale.xlarge:
        setScale(AppTextScale.normal);
        break;
      default:
        setScale(AppTextScale.normal);
        break;
    }
  }
}
