import 'package:chain_of_representation/core/enum/log_level.dart';
import 'package:flutter/material.dart';

abstract class LoggerBase {
  @protected
  final LogStatus logStatus;
  final LoggerBase? _nextLogger;

  const LoggerBase({
    required this.logStatus,
    LoggerBase? nextLogger,
  }) : _nextLogger = nextLogger;

  void logLabel(LogStatus level, String label) {
    if (logStatus <= level) {
      log(label);
    }

    _nextLogger?.logLabel(level, label);
  }

  void logDebug(String label) => logLabel(LogStatus.debug, label);
  void logError(String label) => logLabel(LogStatus.error, label);
  void logInfo(String label) => logLabel(LogStatus.info, label);
  void logWarning(String label) => logLabel(LogStatus.warning, label);
  void logWtf(String label) => logLabel(LogStatus.wtf, label);

  void log(String label);
}
