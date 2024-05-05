import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_coach_mark_target_mixin.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

/// アイコンボタンを表示するWidget
class AppIconButton extends StatelessWidget with AppCoachMarkTargetMixin {
  /// 表示するアイコン
  final dynamic icon;

  /// タップイベント
  final Function() onTap;

  /// アイコンボタンのレイアウトタイプ
  final AppIconButtonType type;

  /// 活性状態
  final bool active;

  /// コンストラクタ
  ///
  /// アイコンとして[icon]を表示する
  /// [onTap]でセットされたメソッドが実行される
  /// [type]に応じてアイコンカラー・ボタンのエフェクトカラーを変化させる
  /// [active]がfalseの場合、非活性表示する
  /// テーマモードが固定の場合は[mode]で指定する
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.type,
    this.active = true,
    this.mode,
  });

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// ボタンタップ時のエフェクトの色(ボタンのレイアウトがNeutral)
  final _colorSet1 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// ボタンアイコンの色(ボタンのレイアウトがNeutral)
  final _colorSet2 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// ボタンタップ時のエフェクトの色(ボタンのレイアウトがMain)
  final _colorSet3 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// ボタンアイコンの色(ボタンのレイアウトがMain)
  final _colorSet4 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// 非活性状態のボタンアイコンの色
  final _colorSet5 = const AppColorSet(
    light: AppColors.red_10,
    dark: AppColors.red_10,
  );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    // 活性状態の場合
    if (active) {
      switch (type) {
        // アイコンボタンのレイアウトがNeutralの場合
        case AppIconButtonType.neutral:
          return _iconButtonWidget(
            context: context,
            splashColor: _colorSet1.color(mode),
            iconColor: _colorSet2.color(mode),
            onTapEvent: onTap,
          );
        // アイコンボタンのレイアウトがMainの場合
        case AppIconButtonType.main:
          return _iconButtonWidget(
            context: context,
            splashColor: _colorSet3.color(mode),
            iconColor: _colorSet4.color(mode),
            onTapEvent: onTap,
          );
      }
      // 非活性状態の場合
    } else {
      return _iconButtonWidget(
        context: context,
        splashColor: Colors.transparent,
        iconColor: _colorSet5.color(mode),
        onTapEvent: null,
      );
    }
  }

  /// アイコンボタン本体
  ///
  /// [splashColor]は、ボタンを押した際のエフェクトの色
  /// [iconColor]は、アイコンボタンの色
  /// [onTapEvent]がfalseの場合は、タップを無効にする
  Widget _iconButtonWidget({
    required BuildContext context,
    required Color splashColor,
    required Color iconColor,
    required Function()? onTapEvent,
  }) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: splashColor,
        onTap: onTapEvent,
        child: SizedBox(
          width: 44,
          height: 44,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onTapTarget() => onTap();
}
