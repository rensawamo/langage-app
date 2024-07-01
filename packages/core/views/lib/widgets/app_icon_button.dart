import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';
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
  });

  /// テーマを固定したい場合に指定する

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
            onTapEvent: onTap,
          );
        // アイコンボタンのレイアウトがMainの場合
        case AppIconButtonType.main:
          return _iconButtonWidget(
            context: context,
            onTapEvent: onTap,
          );
      }
      // 非活性状態の場合
    } else {
      return _iconButtonWidget(
        context: context,
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
    required Function()? onTapEvent,
  }) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      child: InkWell(
        highlightColor: Colors.transparent,
        onTap: onTapEvent,
        child: SizedBox(
          width: 44,
          height: 44,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
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
