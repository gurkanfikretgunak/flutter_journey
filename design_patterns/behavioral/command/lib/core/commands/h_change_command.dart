import 'dart:math';

import 'package:command/core/commands/base/base_command.dart';
import 'package:command/core/figure/figure.dart';

class HeightChangeCommand implements BaseCommand {
  Figure figure;
  late double preH;
  Random random = Random();
  HeightChangeCommand(this.figure) {
    preH = figure.h;
  }
  @override
  void execute() {
    figure.h = random.nextInt(200) + 50.toDouble();
  }

  @override
  String getLabel() {
    return 'Change H';
  }

  @override
  void undo() {
    figure.h = preH;
  }
}
