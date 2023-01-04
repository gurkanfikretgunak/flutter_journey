import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:flutter/cupertino.dart';

class CupertinoButtonWidget implements IButton {
  @override
  Widget render(
      {required String label, required ValueSetter<String> onChanged}) {
    return CupertinoButton(
      child: Text(label),
      onPressed: () => onChanged,
    );
  }
}
