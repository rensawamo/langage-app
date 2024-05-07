import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:flutter/material.dart';

/// アプリ専用ラジオボタン
class AppRadio extends StatelessWidget {
  /// コンストラクタ
  ///
  /// [selected]がtrueのときボタンON
  /// [onPressed]でタップ時のイベントを設定
  /// [active]がtrueのとき活性化。デフォルト:true
  /// テーマモードが固定の場合は[mode]で指定する
  const AppRadio({
    super.key,
    required this.selected,
    this.onPressed,
    this.active = true,
    this.mode,
  });

  /// ボタン状態
  final bool selected;

  /// タップ時イベント
  final void Function()? onPressed;

  /// 活性・非活性切り替え
  final bool active;

  /// アイコンサイズ固定
  final _size = 24.0;

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

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
    return Icon(Icons.radio_button_off_rounded,
        color: _radioOffColor.color(mode), size: _size);
  }

  /// ラジオボタンON状態
  Widget _onButton() {
    return Icon(Icons.check_circle_rounded,
        color: _radioOnColor.color(mode), size: _size);
  }
}
