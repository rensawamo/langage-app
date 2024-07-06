import 'package:core_designsystem/designsystem.dart';

import 'package:core_enums/enums.dart';
import 'package:core_views/data/app_text_span.dart';

import 'package:core_views/widgets/app_rich_text.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// テキストを表示するセクションフッタータイルWidget
class TileSectionFooter extends StatelessWidget {
  /// コンストラクタ
  ///
  /// [text]で表示するテキストを設定する
  /// [textList]で表示するテキストリストを設定する
  /// [type]に応じてテキストレイアウトを変化させる
  /// テキストサイズが固定の場合は[textType]で指定する

  const TileSectionFooter({
    super.key,
    this.text,
    this.textList,
    this.type = TileSectionFooterType.neutral,
  });

  /// 表示するテキスト
  final String? text;

  /// 表示するテキストリスト
  final List<AppTextSpan>? textList;

  /// テキストのレイアウトタイプ
  final TileSectionFooterType type;

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    switch (type) {
      // テキストのレイアウトがNeutralの場合
      case TileSectionFooterType.neutral:
        return _generateMaterial(
          context: context,
        );
      // テキストのレイアウトがErrorの場合
      case TileSectionFooterType.error:
        return _generateMaterial(
          context: context,
        );
    }
  }

  /// テキストの色が設定されたMaterialを生成
  ///
  /// [fontColor]は、表示するテキストの色
  Widget _generateMaterial({
    required BuildContext context,
  }) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: _textWidget(
        context: context,
      ),
    );
  }

  /// 表示するテキスト
  ///
  /// [color]は、テキストの色
  Widget _textWidget({
    required BuildContext context,
  }) {
    if (textList == null) {
      // textListが空の場合、AppTextを使用する
      return AppText(
        text: text ?? '',
        style: AppTextStyles.body(context),
      );
    } else {
      // textListが空でない場合、AppRichTextを使用する
      return AppRichText(
        textList: textList!,
        style: AppTextStyles.body(context),
      );
    }
  }
}
