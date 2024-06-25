import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';
import 'package:flutter/material.dart';

/// アプリ専用ラジオボタン
class AppRadio extends StatelessWidget {
  /// コンストラクタ
  ///
  /// [selected]がtrueのときボタンON
  /// [onPressed]でタップ時のイベントを設定
  /// [active]がtrueのとき活性化。デフォルト:true
  const AppRadio({
    super.key,
    required this.selected,
    this.onPressed,
    this.active = true,
  });

  /// ボタン状態
  final bool selected;

  /// タップ時イベント
  final void Function()? onPressed;

  /// 活性・非活性切り替え
  final bool active;

  /// アイコンサイズ固定
  final _size = 24.0;

  /// ラジオボタンがOFF状態のアイコンの色
  final _radioOffColor = const AppColorSet(type: AppColorType.radioOff);

  /// ラジオボタンがON状態のアイコンの色
  final _radioOnColor = const AppColorSet(type: AppColorType.radioOn);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        constraints: const BoxConstraints(), // デフォルトの制約を潰す
        padding: EdgeInsets.zero, // デフォルトのPaddingを0で潰す
        iconSize: _size,
        onPressed: active ? onPressed : null,
        icon: selected ? _onButton() : _offButton(),
      ),
    );
  }

  /// ラジオボタンOFF
  Widget _offButton() {
    return Icon(Icons.radio_button_unchecked,
        color: _radioOffColor.color(), size: _size);
  }

  /// ラジオボタンON状態
  Widget _onButton() {
    return Icon(Icons.radio_button_checked, color: _radioOnColor.color(), size: _size);
  }
}
