enum AppPrefsKey {
  /// アプリ設定テーマ区分: int（enum index）
  configModeType('configModeType'),

  /// アプリ設定文字サイズ: int（enum index）
  configFontScale('configFontScale');

  const AppPrefsKey(this.value);
  final String value;
}
