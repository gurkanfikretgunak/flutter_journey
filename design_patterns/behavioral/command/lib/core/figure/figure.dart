import 'package:flutter/material.dart';

class Figure {
  late Color color;
  late double h;
  late double w;
  late int strokeW;

  Figure.initial() {
    color = Colors.red;
    h = 50.0;
    w = 50.0;
    strokeW = 3;
  }
}
