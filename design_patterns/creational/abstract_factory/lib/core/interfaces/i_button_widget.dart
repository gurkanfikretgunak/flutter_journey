import 'package:flutter/material.dart';

abstract class IButton {
  Widget render(
      {required String label, required ValueSetter<String> onChanged});
}
