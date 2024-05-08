import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// セクションのヘッダーで利用するタイルWidget
class TileSectionHeader extends StatelessWidget {
  /// コンストラクタ
  ///
  /// テキスト[text]を表示する
  /// [hasFillingColor]がtrueの場合、背景色ありに変更する
  /// テキストサイズが固定の場合は[textType]で指定する
  /// テーマモードが固定の場合は[mode]で指定する
  const TileSectionHeader({
    super.key,
    required this.text,
    this.hasFillingColor = false,
    this.textType,
    this.mode,
  });

  /// テキスト
  final String text;

  /// 背景色の状態
  final bool hasFillingColor;

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// タイルの背景色(背景色ありの場合のみ)
  final _splashColor = const AppColorSet(type: AppColorType.appbar);

  // テキストの色
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  // バックグラウンドカラーの色
  final _backGroundColor = const AppColorSet(type: AppColorType.background);


  /// ヘッダーテキストの色
  // final _colorSet2 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
      color: hasFillingColor ? _backGroundColor.color(mode) : Colors.transparent,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: 8,
      ),
      child: AppText(
        text: text,
        style: TextStyles.s(
          color: _defaultColor.color(mode),
          type: textType,
        ),
      ),
    );
  }
}
