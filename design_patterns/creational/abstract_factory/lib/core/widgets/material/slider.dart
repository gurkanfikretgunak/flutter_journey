import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:flutter/material.dart';

class MaterialSliderWidget implements ISlider {
  @override
  Widget render({double? value, ValueSetter<double>? onChanged}) => Slider(
        max: 100,
        value: value!,
        onChanged: onChanged,
      );
}
