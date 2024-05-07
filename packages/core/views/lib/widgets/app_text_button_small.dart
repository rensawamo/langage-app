import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_coach_mark_target_mixin.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// テキストボタン_スモールを表示するWidget
class AppTextButtonSmall extends StatelessWidget with AppCoachMarkTargetMixin {
  /// 表示するテキスト
  final String text;

  /// タップイベント
  final Function() onTap;

  /// テキストボタンのレイアウトタイプ
  final AppTextButtonType type;

  /// 活性状態
  final bool active;

  /// コンストラクタ
  ///
  /// [text]を表示する
  /// [onTap]でセットされたメソッドが実行される
  /// [type]に応じてボタンレイアウトを変化させる
  /// [active]がfalseの場合、非活性表示する
  /// テキストサイズが固定の場合は[textType]で指定する
  /// テーマモードが固定の場合は[mode]で指定する
  const AppTextButtonSmall({
    super.key,
    required this.text,
    required this.onTap,
    required this.type,
    required this.active,
    this.textType,
    this.mode,
  });

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// ボタンタップ時のエフェクトの色(ボタンのレイアウトがMain)
      final _splashColor = const AppColorSet(type: AppColorType.appbar);


  /// ボタンテキストの色(ボタンのレイアウトがMain)
  // final _colorSet2 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// ボタンタップ時のエフェクトの色(ボタンのレイアウトがError)
  // final _colorSet3 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// ボタンテキストの色(ボタンのレイアウトがError)
  // final _colorSet4 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// 非活性状態のボタンテキストの色
  // final _colorSet5 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    // 活性状態の場合
    if (active) {
      switch (type) {
        // テキストボタンのレイアウトがMainの場合
        case AppTextButtonType.main:
          return _textButtonWidget(
            context: context,
            splashColor: _splashColor.color(mode),
            appTextColor: _splashColor.color(mode),
          );
        // テキストボタンのレイアウトがErrorの場合
        case AppTextButtonType.error:
          return _textButtonWidget(
            context: context,
            splashColor: _splashColor.color(mode),
            appTextColor: _splashColor.color(mode),
          );
      }
      // 非活性状態の場合
    } else {
      return _textButtonWidget(
        context: context,
        splashColor: Colors.transparent,
        appTextColor: _splashColor.color(mode),
      );
    }
  }

  /// テキストボタンを表示するWidget
  ///
  /// [splashColor]は、ボタンを押した際のエフェクトの色
  /// [appTextColor]は、ボタンテキスト(AppText)の色
  Widget _textButtonWidget({
    required BuildContext context,
    required Color splashColor,
    required Color appTextColor,
  }) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: splashColor,
        onTap: active ? onTap : null,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          child: AppText(
            text: text,
            style: TextStyles.s(
              color: appTextColor,
              type: textType,
            ),
          ),
        ),
      ),
    );
  }

  /// 誘導表示用。タップイベントをセット
  @override
  void onTapTarget() => onTap();
}
