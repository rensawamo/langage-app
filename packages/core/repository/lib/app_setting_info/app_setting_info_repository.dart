import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [AppInstallType]のProvider
///
final appSettingInfoProvider =
    StateNotifierProvider<AppSettingInfo, AppInstallType>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return AppSettingInfo(prefsRepository);
});

/// [AppInstallType]の を監視する
/// [AppSettingInfo]の具象クラス
class AppSettingInfo extends StateNotifier<AppInstallType>
    {
  final SharedPreferencesRepository _prefsRepository;
  final AppPrefsKey _themeKey = AppPrefsKey.configAppInfo;

  AppSettingInfo(
    this._prefsRepository,
  ) : super(AppInstallType.none) {
    setup();
  }

  
  Future<void> setup() async {
    final typeIndex =
        _prefsRepository.fetch<int>(_themeKey) ?? AppInstallType.none.index;
    state = AppInstallType.values[typeIndex];
  }

  
  Future<void> changeAppInstallType(AppInstallType type) async {
    state = type;
    await _prefsRepository.save<int>(_themeKey, type.index);
  }
}

