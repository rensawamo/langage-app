import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 削除確認ダイアログ
class DeleteDialog extends StatefulWidget {
  final String title;

  const DeleteDialog({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmDialogState createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        widget.title,
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'キャンセル',
          ),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        TextButton(
          child: const Text(
            'OK',
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
