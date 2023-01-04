import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:flutter/material.dart';

class MaterialActivityIndicatorWidget implements IActivityIndicator {
  @override
  Widget render() => const CircularProgressIndicator();
}
