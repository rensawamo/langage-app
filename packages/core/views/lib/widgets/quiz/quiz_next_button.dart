import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CuteButton extends StatelessWidget {
  final Function next;
  final int quizeCount;
  final bool isSelected;
  final int totalScore;
  final ThemeMode? mode;
  final AppTextSizeType? textType;

  const CuteButton({
    required this.next,
    required this.quizeCount,
    required this.isSelected,
    required this.totalScore,
    this.mode,
    this.textType,
  });

  @override
  Widget build(BuildContext context) {
    final _nextContour = const AppColorSet(type: AppColorType.collectAnswer);
    final _shadowColor = const AppColorSet(type: AppColorType.shadow);

    return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 16),
        child: InkWell(
          onTap: () {
            if (next(isSelected) == true) {
              GoRouter.of(context).pop();
            }
          },
          child: Container(
            // height: 58,
            padding: EdgeInsets.only(
              left: 48.0,
              right: 48.0,
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff132137),
            ),
            child: Text(
              "次へ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
