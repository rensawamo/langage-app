import 'dart:async';
import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';

import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 削除確認ダイアログ
class DeleteDialog extends StatefulWidget {
  final String title;
  final AppTextSizeType? textType;

  const DeleteDialog({
    required this.title,
    this.textType,
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmDialogState createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<DeleteDialog> {
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);
  final _dialogColor = const AppColorSet(type: AppColorType.cellEven);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: _dialogColor.color(),
      title: AppText(
        text: widget.title,
        style: TextStyles.xl(
          color: _defaultColor.color(),
          type: widget.textType,
        ),
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
      ),
      actions: <Widget>[
        TextButton(
          child: AppText(
            text: 'キャンセル',
            style: TextStyles.m(
              color: _defaultColor.color(),
              type: widget.textType,
            ),
          ),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        TextButton(
          child: AppText(
            text: 'OK',
            style: TextStyles.m(
              color: _defaultColor.color(),
              type: widget.textType,
            ),
          ),
          onPressed: () => GoRouter.of(context).pop(true),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// ok がおされたか
Future<bool?> ShowDeleteDialog(BuildContext context, String title) async {
  final bool? result = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => DeleteDialog(
      title: title,
    ),
  );
  return result;
}
