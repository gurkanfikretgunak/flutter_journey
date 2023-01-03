import 'package:flutter/material.dart';

abstract class BaseState {
  @protected
  late String initialLabel;
  @protected
  late String stateLabel;

  String get currentLabel => stateLabel;

  void setState(String label) => stateLabel = label;
  void resetLabel(String label) => stateLabel = initialLabel;
}
