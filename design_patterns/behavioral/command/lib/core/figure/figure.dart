import 'package:flutter/material.dart';

class Figure {
  late Color color;
  late double h;
  late double w;
  late int strokeW;

  Figure._internal() {
    color = Colors.blue;
    h = 100.0;
    w = 50.0;
    strokeW = 3;
  }
}
