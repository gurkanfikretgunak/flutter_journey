import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prototype/core/prototypes/figures/base/base_figure.dart';

class CircleFigure extends BaseFigure {
  late double radiusValue;

  final Random random = Random();

  CircleFigure(super.color, this.radiusValue);

  CircleFigure.initial([super.color = Colors.purple]) {
    radiusValue = 0;
  }

  CircleFigure.placeholder([super.color = Colors.pink]) {
    radiusValue = 40;
  }

  CircleFigure.dublicate(CircleFigure source) : super.dublicate(source) {
    radiusValue = source.radiusValue;
  }

  @override
  BaseFigure dublicate() {
    return CircleFigure.dublicate(this);
  }

  @override
  void randomiseProperties() {
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1.0,
    );
    radiusValue = random.nextInt(50) + 35.toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 90.0,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: 2 * radiusValue,
          width: 2 * radiusValue,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
