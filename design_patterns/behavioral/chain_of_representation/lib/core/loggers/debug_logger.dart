import 'package:chain_of_representation/core/enums/log_level.dart';
import 'package:chain_of_representation/core/loggers/base/base_logger.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/message/log_label.dart';

class DebugLogger extends LoggerBase {
  final LogLogic logLogic;

  const DebugLogger(
    this.logLogic, {
    super.nextLogger,
  }) : super(logStatus: LogStatus.debug);

  @override
  void log(String label) {
    final logLabel = LogLabel(label: label, logStatus: logStatus);

    logLogic.log(logLabel);
  }
}
