import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorWidget implements IActivityIndicator {
  @override
  Widget render() => const CupertinoActivityIndicator();
}
