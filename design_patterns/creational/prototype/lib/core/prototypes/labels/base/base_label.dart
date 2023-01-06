import 'package:flutter/material.dart';

abstract class BaseLabel {
  late String label;
  late Color color;
  late double size;
  BaseLabel(this.color, this.size, this.label);

  BaseLabel.dublicate(BaseLabel source) {
    color = source.color;
    size = source.size;
    label = source.label;
  }

  BaseLabel dublicate();
  void randomiseProperties();
  Widget render();
}
