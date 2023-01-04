import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:flutter/material.dart';

class MaterialButtonWidget implements IButton {
  @override
  Widget render(
      {required String label, required ValueSetter<String> onChanged}) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () => onChanged,
    );
  }
}
