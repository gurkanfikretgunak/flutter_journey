import 'package:factory_method/core/widgets/dialogs/base/base_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget extends BaseDialog {
  @override
  @override
  Color getColor() => Colors.orange;

  @override
  String getTitle() => 'Cupertino Dialog Widget';

  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text(' Cupertino Content label'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        )
      ],
    );
  }
}
