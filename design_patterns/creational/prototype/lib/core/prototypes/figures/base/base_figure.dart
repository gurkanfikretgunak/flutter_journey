import 'package:flutter/material.dart';

abstract class BaseFigure {
  late Color color;

  BaseFigure(this.color);

  BaseFigure.dublicate(BaseFigure source) {
    color = source.color;
  }

  BaseFigure dublicate();
  void randomiseProperties();
  Widget render();
}
