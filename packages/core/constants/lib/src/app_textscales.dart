import 'package:flutter/material.dart';

//// デフォルトのテキストスケールをカスタマイズするクラス
//// 文字の色と bold の有無を指定できるようにしている
class AppTextStyles {
  /// 大き目のタイトル
  static TextStyle largeTitle(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(40.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // タイトル
  static TextStyle title(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(30.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // 第二タイトル
  static TextStyle title2(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(24.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // 第三タイトル
  static TextStyle title3(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(20.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  /// 見出しテキスト
  static TextStyle headline(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(18.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // 本文テキスト
  static TextStyle body(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(16.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // コールアウト
  static TextStyle callout(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(14.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // キャプション
  static TextStyle caption(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(12.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // キャプション2
  static TextStyle caption2(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(10.0),
      color: color,
      fontWeight: fontWeight,
    );
  }

  // 脚注
  static TextStyle footnote(BuildContext context,
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: MediaQuery.textScalerOf(context).scale(8.0),
      color: color,
      fontWeight: fontWeight,
    );
  }
}
