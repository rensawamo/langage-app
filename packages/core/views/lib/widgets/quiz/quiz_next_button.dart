import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:flutter/material.dart';

class CuteButton extends StatelessWidget {
  final Function next;
  final ThemeMode? mode;
  final AppTextSizeType? textType;

  const CuteButton({
    required this.next,
    this.mode,
    this.textType,
  });

  @override
  Widget build(BuildContext context) {
    /// 問題に正解したときの色
    final _nextContour = const AppColorSet(type: AppColorType.collectAnswer);

    return ElevatedButton(
      onPressed: () {
        next();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // ボタン内の余白
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // ボタンの角丸
        ),
        elevation: 8, // ボタンの影の高さ
      ),
      child: Text(
        "次へ",
        style: TextStyles.m(
          color: _nextContour.color(mode),
          type: textType,
        ),
      ),
    );
  }
}
