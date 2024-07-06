import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

// アプリの logger設定を定義
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: kDebugMode ? 2 : 0, // 表示されるコールスタックの数
    errorMethodCount: 8, // 表示されるスタックトレースのコールスタックの数
    lineLength: 80, // 出力するログ1行の幅
    colors: true, // メッセージに色をつけるかどうか
    printEmojis: true, // 絵文字を出力するかどうか
    printTime: true, // タイムスタンプを出力するかどうか
  ),
  level: kDebugMode ? Level.debug : Level.warning,
);

// デバッグでは詳細にlogを出力
// リリースでは warning 以上
void setupLogging() {
  Logger.level = kDebugMode ? Level.debug : Level.warning;
}
