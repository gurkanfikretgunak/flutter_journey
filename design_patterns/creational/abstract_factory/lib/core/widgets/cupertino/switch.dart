import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSwitchWidget implements ISwitch {
  @override
  Widget render({required bool value, required ValueSetter<bool> onChanged}) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
    );
  }
}
