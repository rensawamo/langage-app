import 'package:core_constants/constants.dart';
import 'package:core_views/data/app_text_span.dart';
import 'package:core_views/utility/url_launcher_utility.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// アプリ専用RichText
/// テキスト内に一部だけレイアウト変更したものを含んで表示する際に利用する
class AppRichText extends StatelessWidget {
  /// 表示するテキストを設定
  final List<AppTextSpan> textList;

  /// 文字スタイル。AppTextStyleより設定
  final TextStyle style;

  /// テキストの配置場所
  final TextAlign textAlign;

  /// テキストの向き
  final TextDirection? textDirection;

  /// 文字Overflow時の挙動設定
  final TextOverflow overflow;

  /// 文字縮尺。端末設定の文字サイズ変更に影響されないよう1.0固定
  final textScaleFactor = 1.0;

  /// 行数
  final int? maxLines;

  /// コンストラクタい
  ///
  /// [style]で表示するテキストスタイルを設定する
  /// [textList]は、表示するテキスト(AppTextSpan)を設定する
  /// [textDirection]でテキストの向きを設定する
  /// [textAlign]でテキストの配置場所を設定する
  /// [overflow]で文字がオーバーフローした際の表示方法を設定する
  /// [maxLines]で最大行数を設定する
  const AppRichText({
    super.key,
    required this.style,
    required this.textList,
    this.textAlign = TextAlign.start,
    this.textDirection = TextDirection.ltr,
    this.overflow = TextOverflow.clip,
    this.maxLines,
  });

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _buildText(),
        style: style,
      ),
      textAlign: textAlign,
      textDirection: textDirection,
      overflow: overflow,
      textScaler: TextScaler.linear(textScaleFactor),
      maxLines: maxLines,
      strutStyle: _setStrutStyle(),
    );
  }

  /// TextSpan生成
  List<InlineSpan> _buildText() {
    var list = <InlineSpan>[];

    /// textListで設定したAppTextSpanの数だけループ処理する
    for (var span in textList) {
      TextSpan textSpan;
      if (span.link == "") {
        /// textListの要素を使ってTextSpanを生成する
        /// リンクなし
        textSpan = TextSpan(
          text: span.text,
          style: style.copyWith(
            color: span.color ?? style.color,
            fontWeight: span.emphasis
                ? style.fontSize == 10
                    ? FontWeight.w500
                    : FontWeight.bold
                : null,
          ),
        );
      } else {
        /// リンク有り
        textSpan = TextSpan(
            text: span.text,
            style: style.copyWith(
              color: span.color ?? Colors.blue,
              decoration: TextDecoration.underline,
              fontWeight: span.emphasis
                  ? style.fontSize == 10
                      ? FontWeight.w500
                      : FontWeight.bold
                  : null,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                // 外部ブラウザ起動でwebページを表示
                await URLLauncherUtility.openBrowser(span.link);
              });
      }

      /// 作成したTextSpanをリストに追加する
      list.add(textSpan);
    }
    return list;
  }

  /// 文字サイズに合ったStrutStyleを返却する
  ///
  /// StrutStyleの設定値はDesignGuideに記載
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
