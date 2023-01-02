import 'package:chain_of_representation/core/enum/log_level.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:chain_of_representation/core/label/log_label.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/*
1) Register at https://app.sendgrid.com/
2) Create an API key
3) Optional: check documentation (https://sendgrid.com/docs/API_Reference/Web_API_v3/index.html)
4) And use this code (replacing SENDGRIDAPIKEY with your API key):
 */

class MailLogService {
  final LogLogic logLogic;

  MailLogService(this.logLogic);

  void sendErrorMail(LogStatus logStatus, String label) {
    final logLabel = LogLabel(logStatus: logStatus, label: label);

    _mailSender(logLabel);

    logLogic.log(logLabel);
  }

  _mailSender(LogLabel logLabel) async {
    Map<String, String> headers = {};
    headers["Authorization"] = "Bearer SENDGRIDAPIKEY";
    headers["Content-Type"] = "application/json";
    String url = 'https://api.sendgrid.com/v3/mail/send';
    Response response =
        await http.post(Uri.parse(url), headers: headers, body: "$logLabel");
    return response;
  }
}
