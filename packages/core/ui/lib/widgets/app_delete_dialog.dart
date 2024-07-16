import 'dart:async';
import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
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
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        style: AppTextStyles.body(context),
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'キャンセル',
            style: AppTextStyles.body(context),
          ),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        TextButton(
          child: Text(
            'OK',
            style: AppTextStyles.body(context),
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
