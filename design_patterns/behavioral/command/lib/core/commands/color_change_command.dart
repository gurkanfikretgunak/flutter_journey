import 'dart:math';

import 'package:command/core/commands/base/base_command.dart';
import 'package:command/core/figure/figure.dart';
import 'package:flutter/material.dart';

class ColorChangeCommand implements BaseCommand {
  Figure figure;
  late Color preColor;
  Random random = Random();

  ColorChangeCommand(this.figure) {
    preColor = figure.color;
  }
  @override
  void execute() {
    figure.color = Color.fromARGB(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  String getFigureColorName() {
    return figure.color.toString();
  }

  @override
  String getLabel() {
    return 'Change color';
  }

  @override
  void undo() {
    figure.color = preColor;
  }
}
