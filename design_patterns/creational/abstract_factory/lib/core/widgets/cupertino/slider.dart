import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSliderWidget implements ISlider {
  @override
  Widget render({double? value, ValueSetter<double>? onChanged}) =>
      CupertinoSlider(
        max: 100,
        value: value!,
        onChanged: onChanged,
      );
}
