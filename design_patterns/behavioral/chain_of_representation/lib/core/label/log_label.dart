import 'package:chain_of_representation/core/enum/log_level.dart';
import 'package:flutter/material.dart';

class LogLabel {
  final LogStatus logStatus;
  final String label;

  LogLabel({required this.logStatus, required this.label});

  String get _logStatusValue => logStatus.value.split('.').last;

  Color _getLogRecordColor() {
    switch (logStatus) {
      case LogStatus.debug:
        return Colors.green;
      case LogStatus.error:
        return Colors.redAccent;
      case LogStatus.info:
        return Colors.blue;
      case LogStatus.warning:
        return Colors.yellow;
      case LogStatus.wtf:
        return Colors.purple;
      default:
        throw Exception("Log Status $logStatus' is not supported.");
    }
  }

  Widget getFormattedLabel() {
    return Text(
      '$_logStatusValue : $label',
      style: TextStyle(
        fontSize: 12,
        color: _getLogRecordColor(),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
