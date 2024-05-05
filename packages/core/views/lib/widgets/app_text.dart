import 'package:core_constants/constants.dart';
import 'package:flutter/material.dart';

/// アプリ標準テキスト
class AppText extends StatelessWidget {
  /// コンストラクタ
  ///
  /// key: Widget Key、
  /// text: 表示テキスト、
  /// style: 文字スタイル、
  /// textDirection: デフォルト値 TextDirection.ltr、
  /// textAlign:デフォルト値 TextAlign.start、
  const AppText({
    super.key,
    required this.text,
    required this.style,
    this.textDirection = TextDirection.ltr,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
  });

  /// テキスト本体
  final String text;

  /// 文字スタイル。AppTextStyleより設定
  final TextStyle style;

  /// 文字方向
  final TextDirection? textDirection;

  /// 文字並び
  final TextAlign? textAlign;

  /// 行数
  final int? maxLines;

  /// 文字Overflow時の挙動設定
  final TextOverflow? overflow;

  /// 文字縮尺。端末設定の文字サイズ変更に影響されないよう1.0固定
  final textScaleFactor = 1.0;

  //// Widget生成
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      strutStyle: _setStrutStyle(),
      key: key,
      textDirection: textDirection,
      textAlign: textAlign,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textScaler: TextScaler.linear(textScaleFactor),
    );
  }

  /// 文字サイズに合ったStrutStyleを返却する
  ///
  /// StrutStyleの設定値はDesignGuideに記載。
  StrutStyle _setStrutStyle() {
    switch (style.fontSize?.toInt()) {
      case 10:
        return AppStrutStyle.fontSize10;
      case 12:
        return AppStrutStyle.fontSize12;
      case 14:
        return AppStrutStyle.fontSize14;
      case 16:
        return AppStrutStyle.fontSize16;
      case 18:
        return AppStrutStyle.fontSize18;
      case 20:
        return AppStrutStyle.fontSize20;
      case 22:
        return AppStrutStyle.fontSize22;
      case 24:
        return AppStrutStyle.fontSize24;
      case 26:
        return AppStrutStyle.fontSize26;
      case 28:
        return AppStrutStyle.fontSize28;
      default:
        return AppStrutStyle.fontSize12;
    }
  }
}
