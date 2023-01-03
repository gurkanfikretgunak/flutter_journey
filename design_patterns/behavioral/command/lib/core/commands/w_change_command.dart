import 'dart:math';

import 'package:command/core/commands/base/base_command.dart';
import 'package:command/core/figure/figure.dart';

class WidthChangeCommand implements BaseCommand {
  Figure figure;
  late double preW;
  Random random = Random();
  WidthChangeCommand(this.figure) {
    preW = figure.w;
  }
  @override
  void execute() {
    figure.w = random.nextInt(200) + 50.toDouble();
  }

  @override
  String getLabel() {
    return 'Change W';
  }

  @override
  void undo() {
    figure.w = preW;
  }
}
