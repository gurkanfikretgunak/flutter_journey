import 'package:flutter/material.dart';
import 'base/base_dialog.dart';

class MaterialAlertDialogWidget extends BaseDialog {
  @override
  Widget create(BuildContext context) => AlertDialog(
        title: Text(getTitle()),
        backgroundColor: getColor(),
        content: const Text(' Material Content label'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          )
        ],
      );

  @override
  Color getColor() => Colors.black;

  @override
  String getTitle() => 'Material Dialog Widget';
}
