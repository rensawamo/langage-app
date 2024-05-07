/// SharedPreferencesを利用する時に使う永続データのKey
class PrefsKey {
  /// アプリ設定テーマ区分: int（enum index）
  static const configModeType = 'configModeType';

  /// アプリ設定文字サイズ: int（enum index）
  static const configFontScale = 'configFontScale';

  /// アプリ設定インストールタイプ: int（enum index）
  static const configInstallType = 'configInstallType';

  /// セキュア領域保持フラグ(true: 保持)
  static const hasSecure = 'hasSecure';

  /// リカバリー済みフラグ
  static const isRecovered = 'isRecovered';
}
