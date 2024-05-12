/// 使用中のアプリのインストールタイプ
enum AppInstallType {
  // none
  none,
  // 韓国語 ビギナー
  koreanBeginner,
  // 韓国語
}

extension QuizInstalltypeExtension on AppInstallType {
  String get name {
    return this.toString().split('.').last;
  }
}
