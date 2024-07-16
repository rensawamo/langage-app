import 'package:core_foundation/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// アプリ内の設定を管理する
class AppSettingInfo {
  /// 共通インスタンス
  static final AppSettingInfo _shared = AppSettingInfo._internal();

  /// コンストラクタ
  AppSettingInfo._internal();

  /// singletonパターンを実現するためのfactoryコンストラクタ
  factory AppSettingInfo() => _shared;

  /// インストールされているアプリのタイプ
  AppInstallType _appInstallType = AppInstallType.none;

  /// Getter: appInstallType
  AppInstallType get appInstallType => _appInstallType;

  /// ftsの設定
  String get ftsSetting {
    switch (_appInstallType) {
      case AppInstallType.koreanBeginner:
        return 'ko-KR';
      default:
        return 'ja-JP';
    }
  }

  /// インストールされているアプリのタイプ変更
  Future<void> changeAppInstallType(AppInstallType type) async {
    final pref = await SharedPreferences.getInstance();
    // 端末内に保存
    await pref.setInt("appInstallType", type.index);
    _appInstallType = type;
  }

  /// 端末内に保存された情報を読み込んで適用する
  Future<void> setup() async {
    final pref = await SharedPreferences.getInstance();

    /// インストールされているアプリのタイプ取得
    if (pref.containsKey("appInstallType")) {
      final type = pref.getInt("appInstallType");
      if (type != null) {
        _appInstallType = AppInstallType.values[type];
      }
    }
  }
}
