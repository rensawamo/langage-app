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
    final _nextContour = const AppColorSet(type: AppColorType.collectAnswer);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(1.1, 1.1),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () => next(),
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent, // 影も透明に
            padding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 0, // 影の高さを0に設定
          ),
          child: Text(
            "次へ",
            style: TextStyles.m(
              color: _nextContour.color(mode),
              type: textType,
            ),
          ),
        ),
      ),
    );
  }
}
