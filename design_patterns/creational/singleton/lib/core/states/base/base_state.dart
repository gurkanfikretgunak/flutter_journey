import 'package:flutter/material.dart';

abstract class BaseState {
  @protected
  String? initialLabel;
  @protected
  String? stateLabel = '';
  String get currentLabel => stateLabel!;

  void setState(String label) => stateLabel = label;
  void resetLabel() => stateLabel = initialLabel;
}
