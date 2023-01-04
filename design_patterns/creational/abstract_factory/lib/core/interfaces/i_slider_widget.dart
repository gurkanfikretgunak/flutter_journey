import 'package:flutter/material.dart';

abstract class ISlider {
  Widget render({double value, ValueSetter<double> onChanged});
}
