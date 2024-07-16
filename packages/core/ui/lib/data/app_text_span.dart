import 'package:flutter/material.dart';

/// アプリ専用TextSpanデータObject
///
/// テキスト内に一部だけレイアウト変更したものを含んで表示する際に利用する
@immutable
class AppTextSpan {
  const AppTextSpan({
    required this.text,
    this.color,
    this.emphasis = false,
    this.link = "",
  });

  /// 表示するテキスト
  final String text;

  /// 表示テキストカラー
  final Color? color;

  /// 表示テキストに設定するURLリンク　なにも設定していない場合はイベントなし
  final String link;

  /// trueの場合、[text]を強調表示する
  final bool emphasis;
}
