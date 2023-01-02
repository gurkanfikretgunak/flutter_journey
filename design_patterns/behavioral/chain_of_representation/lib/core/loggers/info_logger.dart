import 'package:chain_of_representation/core/enums/log_level.dart';
import 'package:chain_of_representation/core/loggers/base/base_logger.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/services/out_log_service.dart';

class InfoLogger extends LoggerBase {
  late OutLogService outLogService;

  InfoLogger(
    LogLogic logLogic, {
    super.nextLogger,
  })  : outLogService = OutLogService(logLogic),
        super(logStatus: LogStatus.info);

  @override
  void log(String label) {
    outLogService.logLabel(logStatus, label);
  }
}
