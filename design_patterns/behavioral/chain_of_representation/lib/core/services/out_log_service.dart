import 'package:chain_of_representation/core/enums/log_level.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/message/log_label.dart';

class OutLogService {
  final LogLogic logLogic;

  OutLogService(this.logLogic);

  void logLabel(LogStatus logStatus, String label) {
    final logLabel = LogLabel(logStatus: logStatus, label: label);
    logLogic.log(logLabel);
  }
}
