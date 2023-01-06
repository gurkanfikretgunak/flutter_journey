import 'package:flutter/material.dart';

abstract class Figure {
  late Color color;

  Figure(this.color);

  Figure.dublicate(Figure source) {
    color = source.color;
  }

  Figure dublicate();
  void randomiseProperties();
  Widget render();
}
