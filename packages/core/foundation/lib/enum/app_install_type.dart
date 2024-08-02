/// 使用中のアプリのインストールタイプ
enum AppInstallType {
  // none
  none,
  // 韓国語 ビギナー
  koreanBeginner,
  // 英語 ビギナー
  englishBeginner,
}

extension QuizInstalltypeExtension on AppInstallType {
  // tls 用 の言語設定
  String get ftsSetting {
    switch (this) {
      case AppInstallType.koreanBeginner:
        return 'ko-KR';
      case AppInstallType.englishBeginner:
        return 'en-US';
      default:
        return 'ja-JP';
    }
  }
}
