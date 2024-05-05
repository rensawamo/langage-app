import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:flutter/material.dart';

///アプリ専用テキストスタイル
class TextStyles {
  static TextStyle xs({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: AppTextScale.xs.size(type: type),
      color: color,
      fontWeight: bold ? FontWeight.w500 : null,
      decoration: decoration,
      height: AppStrutStyle.fontSize10.height,
    );
  }

  static TextStyle s({
    Color? color,
    Color? backgroundColor,
    AppTextSizeType? type,
    TextDecoration? decoration,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: AppTextScale.s.size(type: type),
      color: color,
      fontWeight: bold ? FontWeight.bold : null,
      decoration: decoration,
      height: AppStrutStyle.fontSize12.height,
    );
  }

  // テキストが文字サイズ変更対象外の場合のみ使用する
  static TextStyle sL({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: 13,
      color: color,
      fontWeight: bold ? FontWeight.bold : null,
      decoration: decoration,
      height: AppStrutStyle.fontSize13.height,
    );
  }

  // テキストが文字サイズ変更対象外の場合のみ使用する
  static TextStyle sEL({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: 14,
      color: color,
      fontWeight: bold ? FontWeight.bold : null,
      decoration: decoration,
      height: AppStrutStyle.fontSize14.height,
    );
  }

  static TextStyle m({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: AppTextScale.m.size(type: type),
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      color: color,
      decoration: decoration,
      height: AppStrutStyle.fontSize14.height,
    );
  }

  // テキストが文字サイズ変更対象外の場合のみ使用する
  static TextStyle mL({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: 16,
      fontWeight: bold ? FontWeight.bold : null,
      color: color,
      decoration: decoration,
      height: AppStrutStyle.fontSize16.height,
    );
  }

  // テキストが文字サイズ変更対象外の場合のみ使用する
  static TextStyle mEL({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
      backgroundColor: backgroundColor,
      fontSize: 18,
      fontWeight: bold ? FontWeight.bold : null,
      color: color,
      decoration: decoration,
      height: AppStrutStyle.fontSize18.height,
    );
  }

  static TextStyle l({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
        backgroundColor: backgroundColor,
        fontSize: AppTextScale.l.size(type: type),
        color: color,
        fontWeight: bold ? FontWeight.bold : null,
        decoration: decoration,
        height: AppStrutStyle.fontSize16.height);
  }

  static TextStyle xl({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
        backgroundColor: backgroundColor,
        fontSize: AppTextScale.xl.size(type: type),
        color: color,
        fontWeight: bold ? FontWeight.bold : null,
        decoration: decoration,
        height: AppStrutStyle.fontSize20.height);
  }

  static TextStyle xxl({
    Color? color,
    Color? backgroundColor,
    TextDecoration? decoration,
    AppTextSizeType? type,
    bool bold = false,
  }) {
    return TextStyle(
        backgroundColor: backgroundColor,
        fontSize: AppTextScale.xxl.size(type: type),
        color: color,
        fontWeight: bold ? FontWeight.bold : null,
        decoration: decoration,
        height: AppStrutStyle.fontSize24.height);
  }
}
