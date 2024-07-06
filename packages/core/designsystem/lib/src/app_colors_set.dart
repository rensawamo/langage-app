import 'package:flutter/material.dart';

/// ダークモードとライトモードでカラーをカスタマイズするためのクラス

class AppColorsSet {
  // 影
  static Color getShadowColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color(0xFF3A5160).withOpacity(0.2)
        : Color(0xFF3A5160).withOpacity(0.2);
  }

  // アプリ全体のtileの色
  static Color getAppTileColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 107, 100, 100)
        : Color(0xFFFCEAE2);
  }
  // タイトルアイコン
  static Color getTitleIconColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.grey
        : Color(0xffEDA276);
  }

  // クイズのタイルの色
  static Color getQuizTileColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color(0xff808080)
        : Color(0xffEDA276);
  }

  static Color getButtonColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color(0xff008000)
        : Color(0xff132137);
  }

  // 表のタイトルの背景色
  static Color getTableTitleColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color(0xff008000)
        : Color(0xffECBCA1);
  }

  // 表の偶数行の背景色
  static Color getTableEvenRowColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color.fromARGB(255, 65, 60, 60)
        : Color(0xffF5F5F5);
  }

  // 表の奇数行の背景色
  static Color getTableOddRowColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Color(0xFF242222)
        : Color(0xffEEEEEE);
  }

  // リバースカラー ダークモードなら白 ライトモードなら黒
  static Color getReverseColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
  }
}
