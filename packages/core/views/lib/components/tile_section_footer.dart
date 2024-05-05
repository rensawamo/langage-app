import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/data/app_text_span.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/app_rich_text.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';


/// テキストを表示するセクションフッタータイルWidget
class TileSectionFooter extends StatelessWidget {
  /// コンストラクタ
  ///
  /// [text]で表示するテキストを設定する
  /// [textList]で表示するテキストリストを設定する
  /// [type]に応じてテキストレイアウトを変化させる
  /// テキストサイズが固定の場合は[textType]で指定する
  /// テーマモードが固定の場合は[mode]で指定する
  const TileSectionFooter({
    super.key,
    this.text,
    this.textList,
    this.type = TileSectionFooterType.neutral,
    this.textType,
    this.mode,
  });

  /// 表示するテキスト
  final String? text;

  /// 表示するテキストリスト
  final List<AppTextSpan>? textList;

  /// テキストのレイアウトタイプ
  final TileSectionFooterType type;

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// フッターテキストの色(テキストのレイアウトがNeutral)
  final _colorSet1 = const AppColorSet(
    light: AppColors.neutral_40_100,
    dark: AppColors.neutral_70_100,
  );

  /// フッターテキストの色(テキストのレイアウトがError)
  final _colorSet2 = const AppColorSet(
    light: AppColors.error_40_100,
    dark: AppColors.error_80_100,
  );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    switch (type) {
      // テキストのレイアウトがNeutralの場合
      case TileSectionFooterType.neutral:
        return _generateMaterial(
          context: context,
          fontColor: _colorSet1.color(mode),
        );
      // テキストのレイアウトがErrorの場合
      case TileSectionFooterType.error:
        return _generateMaterial(
          context: context,
          fontColor: _colorSet2.color(mode),
        );
    }
  }

  /// テキストの色が設定されたMaterialを生成
  ///
  /// [fontColor]は、表示するテキストの色
  Widget _generateMaterial({
    required BuildContext context,
    required Color fontColor,
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
        color: fontColor,
      ),
    );
  }

  /// 表示するテキスト
  ///
  /// [color]は、テキストの色
  Widget _textWidget({
    required Color color,
  }) {
    if (textList == null) {
      // textListが空の場合、AppTextを使用する
      return AppText(
        text: text ?? '',
        style: TextStyles.s(
          color: color,
          type: textType,
        ),
      );
    } else {
      // textListが空でない場合、AppRichTextを使用する
      return AppRichText(
        textList: textList!,
        style: TextStyles.s(
          color: color,
          type: textType,
        ),
      );
    }
  }
}
