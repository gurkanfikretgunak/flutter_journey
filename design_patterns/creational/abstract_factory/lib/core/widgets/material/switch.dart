import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';
import 'package:flutter/material.dart';

class MaterialSwitchWidget implements ISwitch {
  @override
  Widget render({bool? value, ValueSetter<bool>? onChanged}) {
    return Switch(
      activeColor: Colors.blue,
      value: value!,
      onChanged: onChanged,
    );
  }
}
