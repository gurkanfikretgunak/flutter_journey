import 'package:chain_of_representation/core/enum/log_level.dart';
import 'package:chain_of_representation/core/loggers/base/base_logger.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/services/mail_log_service.dart';

class ErrorLogger extends LoggerBase {
  late MailLogService mailLogService;

  ErrorLogger(
    LogLogic logLogic, {
    super.nextLogger,
  })  : mailLogService = MailLogService(logLogic),
        super(logStatus: LogStatus.error);

  @override
  void log(String label) {
    mailLogService.sendErrorMail(logStatus, label);
  }
}
