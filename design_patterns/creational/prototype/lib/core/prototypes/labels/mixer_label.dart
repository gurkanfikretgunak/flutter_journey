import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:prototype/core/prototypes/labels/base/base_label.dart';

class MixerLabel extends BaseLabel {
  late FontWeight fontWeight;

  final List<FontWeight> _fontWeights = [
    FontWeight.bold,
    FontWeight.normal,
    FontWeight.w900,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w600
  ];

  Random random = Random();

  MixerLabel.initial(
      [super.color = Colors.black,
      super.size = 13,
      super.label = 'Initial Label']) {
    fontWeight = FontWeight.bold;
  }
  MixerLabel.dublicate(MixerLabel source) : super.dublicate(source) {
    fontWeight = source.fontWeight;
  }

  @override
  BaseLabel dublicate() {
    return MixerLabel.dublicate(this);
  }

  @override
  void randomiseProperties() {
    label = faker.person.name();
    fontWeight = _fontWeights[random.nextInt(10)];

    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1.0,
    );
    size = random.nextInt(60) + 13.toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 100.0,
      child: Center(
          child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
        ),
      )),
    );
  }
}
