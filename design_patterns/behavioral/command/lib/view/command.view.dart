import 'package:command/core/commands/base/base_command.dart';
import 'package:command/core/commands/color_change_command.dart';
import 'package:command/core/commands/h_change_command.dart';
import 'package:command/core/commands/w_change_command.dart';
import 'package:command/core/figure/figure.dart';
import 'package:command/core/history/command_history.dart';
import 'package:flutter/material.dart';

class CommandView extends StatefulWidget {
  const CommandView({super.key});

  @override
  State<CommandView> createState() => _CommandViewState();
}

class _CommandViewState extends State<CommandView> {
  final CommandHistory _commandHistory = CommandHistory();
  final Figure _figure = Figure.initial();

  void _changeColor() {
    final command = ColorChangeCommand(_figure);
    _executeCommand(command);
  }

  void _changeHeight() {
    final command = HeightChangeCommand(_figure);
    _executeCommand(command);
  }

  void _changeWidth() {
    final command = WidthChangeCommand(_figure);
    _executeCommand(command);
  }

  void _executeCommand(BaseCommand command) {
    setState(() {
      command.execute();
      _commandHistory.add(command);
    });
  }

  void _undo() {
    setState(() {
      _commandHistory.undo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Figure
              FigureContainer(figure: _figure),
              //Buttons
              ElevatedButton(
                onPressed: _changeColor,
                child: const Text('Change Color'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _changeHeight,
                child: const Text('Change Height'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _changeWidth,
                child: const Text('Change Width'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _undo,
                child: const Text('Undo'),
              ),
              //History
              const Divider(),
              CommandHistoryColumn(commands: _commandHistory.commandHistoryList)
            ],
          ),
        ),
      ),
    );
  }
}

class CommandHistoryColumn extends StatelessWidget {
  final List<String> commands;

  const CommandHistoryColumn({
    super.key,
    required this.commands,
  }) : assert(commands != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Command history',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        if (commands.isEmpty) const Text('Command history is empty.'),
        for (var i = 0; i < commands.length; i++)
          Text('${i + 1}. ${commands[i]}'),
      ],
    );
  }
}

class FigureContainer extends StatelessWidget {
  final Figure figure;

  const FigureContainer({
    super.key,
    required this.figure,
  }) : assert(figure != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: figure.h,
          width: figure.w,
          decoration: BoxDecoration(
            color: figure.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
