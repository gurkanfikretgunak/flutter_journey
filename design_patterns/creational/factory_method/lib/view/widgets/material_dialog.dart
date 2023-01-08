import 'package:factory_method/core/widgets/dialogs/base/base_dialog.dart';
import 'package:flutter/material.dart';

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
  Color getColor() => Colors.orangeAccent;

  @override
  String getTitle() => 'Material Dialog Widget';
}
