/// 使用中のアプリのインストールタイプ
enum AppInstallType {
  // none
  none,
  // 韓国語 ビギナー
  koreanBeginner,
  // 韓国語
}

extension QuizInstalltypeExtension on AppInstallType {
  // tls 用
  String get ftsSetting {
    switch (this) {
      case AppInstallType.koreanBeginner:
        return 'ko-KR';
      default:
        return 'ja-JP';
    }
  }
}
