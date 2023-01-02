import 'package:chain_of_representation/core/enum/log_level.dart';
import 'package:chain_of_representation/core/loggers/base/base_logger.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/label/log_label.dart';

class WarningLogger extends LoggerBase {
  final LogLogic logLogic;

  const WarningLogger(
    this.logLogic, {
    super.nextLogger,
  }) : super(logStatus: LogStatus.warning);

  @override
  void log(String label) {
    final logLabel = LogLabel(label: label, logStatus: logStatus);
    logLogic.log(logLabel);
  }
}
