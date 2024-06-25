
import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';
import 'package:core_views/widgets/app_radio.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// ラジオ付き二行タイルでフォントサイズが特大のアクションタイルWidget
class ActiontileFontSizeExtraBigTile extends StatelessWidget {
  /// メインテキスト
  final String mainText;

  /// サブテキスト
  final String subText;

  /// タップイベント
  final Function(dynamic) onTap;

  /// ラジオボタンが共通で参照する状態
  /// 各ボタン値と一致するとラジオボタンをSelect状態にする
  final dynamic groupValue;

  /// ラジオボタンの値
  final dynamic radioValue;

  /// 活性状態
  final bool active;

  /// コンストラクタ
  ///
  /// メインテキスト(1行目)として[mainText]を表示する
  /// サブテキスト(2行目)として[subText]を表示する
  /// [onTap]でセットされたメソッドが実行される。引数として選択後の状態を渡す
  /// ラジオボタン共通の状態を[groupValue]で設定する。[groupValue]を変化させることでON/OFFを切り替える
  /// ラジオボタンの値を[radioValue]で設定する。[groupValue]と一致するとONになる
  /// [active]がfalseの場合、非活性表示する
  /// テキストサイズが固定の場合は[textType]で指定する
  const ActiontileFontSizeExtraBigTile({
    super.key,
    required this.mainText,
    required this.subText,
    required this.onTap,
    required this.groupValue,
    required this.radioValue,
    this.active = true,
    this.textType,
  });

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;



  /// タイルタップ時のエフェクトの色
  final _effectColor = const AppColorSet(type: AppColorType.effectColor);

  /// テキストの色
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: _effectColor.color(),
        onTap: active ? () => onTap(radioValue) : null,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: AppRadio(
                  selected: groupValue == radioValue,
                  active: active,
                ),
              ),
              Expanded(
                child: _textArea(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 二行テキスト表示部分
  Widget _textArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: AppText(
            text: mainText,
            style: TextStyles.mEL(
              color: _defaultColor.color(),
              type: textType,
            ),
          ),
        ),
        AppText(
          text: subText,
          style: TextStyles.sEL(
            color: _defaultColor.color(),
            type: textType,
          ),
        ),
      ],
    );
  }
}
