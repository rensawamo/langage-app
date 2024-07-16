import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizNextButton extends StatelessWidget {
  final Function next;
  final int quizeCount;
  final bool isSelected;
  final int totalScore;
  final ThemeMode? mode;
  final AppTextSizeType? textType;

  const QuizNextButton({
    required this.next,
    required this.quizeCount,
    required this.isSelected,
    required this.totalScore,
    this.mode,
    this.textType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 7),
        child: InkWell(
          onTap: () {
            if (next(isSelected) == true) {
              context.pop();
            }
          },
          child: Container(
            // height: 58,
            padding: EdgeInsets.only(
              left: 48.0,
              right: 48.0,
              bottom: 10,
              top: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColorsSet.getButtonColor(context),
            ),
            child: Text(
              "次へ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
