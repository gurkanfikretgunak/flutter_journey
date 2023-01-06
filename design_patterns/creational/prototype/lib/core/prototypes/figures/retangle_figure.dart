import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:prototype/core/prototypes/figures/base/base_figure.dart';

class RetangleFigure extends BaseFigure {
  late double h;
  late double w;

  Random random = Random();

  RetangleFigure(super.color, this.h, this.w);

  RetangleFigure.initial([
    super.color = Colors.purple,
  ]) {
    h = 50;
    w = 50;
  }
  @override
  BaseFigure dublicate() {
    return RetangleFigure.dublicate(this);
  }

  RetangleFigure.dublicate(RetangleFigure source) : super.dublicate(source) {
    h = source.h;
    w = source.w;
  }
  @override
  void randomiseProperties() {
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1.0,
    );
    h = random.nextInt(100) + 30.toDouble();
    w = random.nextInt(100) + 30.toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 100.0,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 650),
          height: h,
          width: w,
          decoration: BoxDecoration(
            color: color,
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
