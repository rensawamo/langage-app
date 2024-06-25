import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';
import 'package:core_views/widgets/app_radio.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// ラジオボタンとテキストを表示するアクションタイルWidget
class ActionTileSingleRadioTile extends StatelessWidget {
  /// 表示するテキスト
  final String itemText;

  /// タップイベント
  final Function(dynamic) onTap;

  /// ボタンが共通で参照する状態
  /// 各ボタン値と一致するとラジオボタンをSelect状態にする
  final dynamic groupValue;

  /// ラジオボタンの値
  final dynamic radioValue;

  /// 活性状態
  final bool active;

  /// ラジオボタンのカラー状態
  final bool disabledPartical;

  /// コンストラクタ
  ///
  /// [itemText]を表示する
  /// [onTap]でセットされたメソッドが実行される。引数として選択後の状態を渡す
  /// ラジオボタン共通の状態を[groupValue]を設定。[groupValue]を変化させることでON/OFFを切り替える
  /// ラジオボタンの値を[radioValue]で設定。[groupValue]と一致するとONになる
  /// [active]がfalseの場合、非活性表示する
  /// [disabledPartical]がtrueの場合、ラジオボタンのみ非活性カラーにする
  /// テキストサイズが固定の場合は[textType]で指定する
  
  const ActionTileSingleRadioTile({
    super.key,
    required this.itemText,
    required this.onTap,
    required this.groupValue,
    required this.radioValue,
    this.active = true,
    this.disabledPartical = false,
    this.textType,
    
  });

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType; 

  /// タイルタップ時のエフェクトの色
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  // /// テキストの色
  // final _colorSet2 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  // /// 非活性状態のテキストの色
  // final _colorSet3 = const AppColorSet(
  //   light: AppColors.red_10,
  //   dark: AppColors.red_10,
  // );

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: active ? _defaultColor.color() : Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: active ? () => onTap(radioValue) : null,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _radioButton(),
              _radioText(),
            ],
          ),
        ),
      ),
    );
  }

  /// ラジオボタンを表示するWidget
  Widget _radioButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: AppRadio(
        selected: groupValue == radioValue,
        active: active,
      ),
    );
  }

  /// テキストを表示するWidget
  Widget _radioText() {
    return Expanded(
      child: AppText(
        text: itemText,
        style: TextStyles.m(
          color: active || disabledPartical
              ? _defaultColor.color()
              : _defaultColor.color(),
          type: textType,
        ),
      ),
    );
  }
}
