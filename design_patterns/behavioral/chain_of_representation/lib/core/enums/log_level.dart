enum LogStatus {
  debug('Debug'),
  info('Info'),
  error('Error'),
  warning('Warning'),
  wtf('WTF');

  final String value;
  const LogStatus(this.value);
}

extension LogLevelExtension on LogStatus {
  bool operator <=(LogStatus logLevel) => index <= logLevel.index;
}
