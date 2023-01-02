import 'dart:async';
import 'dart:collection';

import 'package:chain_of_representation/core/message/log_label.dart';

class LogLogic {
  final List<LogLabel> _logs = [];
  final StreamController<List<LogLabel>> _logStream =
      StreamController<List<LogLabel>>();

  StreamSink<List<LogLabel>> get _inLogStream => _logStream.sink;
  Stream<List<LogLabel>> get outLogStream => _logStream.stream;

  void log(LogLabel logLabel) {
    _logs.add(logLabel);
    _inLogStream.add(UnmodifiableListView(_logs));
  }

  void dispose() {
    _logStream.close();
  }
}
