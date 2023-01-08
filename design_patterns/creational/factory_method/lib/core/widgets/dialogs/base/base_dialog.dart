import 'package:flutter/material.dart';

abstract class BaseDialog {
  String getTitle();
  Color getColor();
  Widget create(BuildContext context);

  Future<void> show(BuildContext context) async {
    final dialog = create(context);

    return showDialog<void>(
      barrierColor: getColor(),
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return dialog;
      },
    );
  }
}
