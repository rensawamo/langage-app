import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリのインストールタイプを管理するクラス
final appSettingInfoProvider =
    StateNotifierProvider<AppSettingInfoImpl, AppInstallType>((ref) {
  final prefsRepository = ref.watch(sharedPreferencesRepositoryProvider);
  return AppSettingInfoImpl(prefsRepository);
});

class AppSettingInfoImpl extends StateNotifier<AppInstallType>
    implements AppSettingInfo {
  final SharedPreferencesRepository _prefsRepository;
  final AppPrefsKey _themeKey = AppPrefsKey.configAppInfo;

  AppSettingInfoImpl(
    this._prefsRepository,
  ) : super(AppInstallType.none) {
    setup();
  }

  @override
  Future<void> setup() async {
    final typeIndex =
        _prefsRepository.fetch<int>(_themeKey) ?? AppInstallType.none.index;
    state = AppInstallType.values[typeIndex];
  }

  @override
  Future<void> changeAppInstallType(AppInstallType type) async {
    state = type;
    await _prefsRepository.save<int>(_themeKey, type.index);
  }
}

abstract class AppSettingInfo {
  // main.dartでアプリのインストールタイプを設定する
  Future<void> changeAppInstallType(AppInstallType type);

  // アプリのインストールタイプを読み込む
  // 初期値は無設定
  Future<void> setup();
}
