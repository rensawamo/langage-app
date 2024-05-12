import 'package:core_enums/enums.dart';
import 'package:core_views/utility/app_color_set.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class progressBar extends StatefulWidget {
  const progressBar(
      {super.key, required this.count, this.mode, required this.index});
  final int count;
  final int index;
  final ThemeMode? mode;

  @override
  State<progressBar> createState() => _progressBarState();
}

class _progressBarState extends State<progressBar>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval((1 / 9) * 1, 1.0, curve: Curves.fastOutSlowIn)));
    animationController?.forward();

    super.initState();
  }

  // 影の色
  final _shadowColor = const AppColorSet(type: AppColorType.shadow);
  // プログレスバーの色
  final _progressColor = const AppColorSet(type: AppColorType.progress);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 5,
              width: 200,
              decoration: BoxDecoration(
                color: _shadowColor.color(widget.mode),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: (200 / widget.count * (widget.index)) +
                        ((200 / widget.count) * animation!.value),
                    height: 5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        _progressColor.color(widget.mode),
                        _progressColor.color(widget.mode)
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
