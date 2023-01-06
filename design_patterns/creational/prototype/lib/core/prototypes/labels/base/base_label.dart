import 'package:flutter/material.dart';

abstract class BaseLabel {
  late Color color;
  late int size;
  BaseLabel(this.color, this.size);

  BaseLabel.dublicate(BaseLabel source) {
    color = source.color;
  }

  BaseLabel dublicate();
  void randomiseProperties();
  Widget render();
}
