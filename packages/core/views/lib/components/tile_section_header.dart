import 'package:core_constants/constants.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// セクションのヘッダーで利用するタイルWidget
class TileSectionHeader extends StatelessWidget {
  /// コンストラクタ
  ///
  /// テキスト[text]を表示する
  /// [hasFillingColor]がtrueの場合、背景色ありに変更する
  /// テキストサイズが固定の場合は[textType]で指定する

  const TileSectionHeader({
    super.key,
    required this.text,
    this.hasFillingColor = false,
  });

  /// テキスト
  final String text;

  /// 背景色の状態
  final bool hasFillingColor;

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: 8,
      ),
      child: AppText(
        text: text,
        style: AppTextStyles.body(context),
      ),
    );
  }
}
