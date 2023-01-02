import 'dart:developer';

enum LogLevel {
  debug('Debug'),
  info('Info'),
  error('Error'),
  warning('Warning'),
  wtf('WTF');

  final String value;
  const LogLevel(this.value);
}

extension LogLevelExtension on LogLevel {
  bool operator <=(LogLevel logLevel) => index <= logLevel.index;
}
