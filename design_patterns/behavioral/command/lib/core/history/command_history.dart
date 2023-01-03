import 'dart:collection';

import 'package:command/core/commands/base/base_command.dart';

class CommandHistory {
  final ListQueue<BaseCommand> _commands = ListQueue<BaseCommand>();

  bool get isEmpty => _commands.isEmpty;
  List<String> get commandHistoryList =>
      _commands.map((h) => h.getLabel()).toList();

  void add(BaseCommand command) {
    _commands.add(command);
  }

  void undo() {
    if (_commands.isNotEmpty) {
      final command = _commands.removeLast();
      command.undo();
    }
  }
}
