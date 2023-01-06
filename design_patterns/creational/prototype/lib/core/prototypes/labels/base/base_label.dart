import 'package:flutter/material.dart';

abstract class Label {
  late Color color;
  late int size;
  Label(this.color, this.size);

  Label.dublicate(Label source) {
    color = source.color;
  }

  Label dublicate();
  void randomiseProperties();
  Widget render();
}
