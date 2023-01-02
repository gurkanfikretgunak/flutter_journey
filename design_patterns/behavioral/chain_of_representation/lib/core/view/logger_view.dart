/*
import 'package:chain_of_representation/core/label/log_label.dart';
import 'package:chain_of_representation/core/loggers/base/base_logger.dart';
import 'package:chain_of_representation/core/loggers/debug_logger.dart';
import 'package:chain_of_representation/core/loggers/error_logger.dart';
import 'package:chain_of_representation/core/loggers/info_logger.dart';
import 'package:chain_of_representation/core/loggers/warning_logger.dart';
import 'package:chain_of_representation/core/logic/log_logic.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Loggeriew extends StatefulWidget {
  const LoggerView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoggerViewState createState() => _LoggerViewState();
}

class _LoggerViewState extends State<LoggerView> {
  final LogLogic logLogic = LogLogic();

  late final LoggerBase logger;
  late final WarningLogger loggerWarning;

  @override
  void initState() {
    super.initState();
    loggerWarning = WarningLogger(logLogic);
    logger = DebugLogger(
      logLogic,
      nextLogger: InfoLogger(logLogic,
          nextLogger: WarningLogger(
            logLogic,
            nextLogger: ErrorLogger(logLogic),
          )),
    );
  }

  @override
  void dispose() {
    logLogic.dispose();
    super.dispose();
  }

  String get randomLog => faker.lorem.sentence();

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () => logger.logDebug(randomLog),
              child: const Text('Log debug'),
            ),
            ElevatedButton(
              onPressed: () => logger.logInfo(randomLog),
              child: const Text('Log Info'),
            ),
            ElevatedButton(
              onPressed: () => logger.logError(randomLog),
              child: const Text('Log Error'),
            ),
            ElevatedButton(
              onPressed: () => loggerWarning.logWarning(randomLog),
              child: const Text('Log Warning'),
            ),
            const Divider(),
            Row(
              children: <Widget>[
                Expanded(
                  child: StreamBuilder<List<LogLabel>>(
                    initialData: const [],
                    stream: logLogic.outLogStream,
                    builder: (context, snapshot) =>
                        LogLabelColumn(logLabels: snapshot.data!),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LogLabelColumn extends StatelessWidget {
  final List<LogLabel> logLabels;

  const LogLabelColumn({
    super.key,
    required this.logLabels,
    // ignore: unnecessary_null_comparison
  }) : assert(logLabels != null);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (var logLabel in logLabels)
          Row(
            children: <Widget>[
              Expanded(
                child: logLabel.getFormattedLabel(),
              ),
            ],
          )
      ],
    );
  }
}
*/