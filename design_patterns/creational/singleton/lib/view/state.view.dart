import 'package:flutter/material.dart';
import 'package:singleton/core/states/another_new_state.dart';
import 'package:singleton/core/states/base/base_state.dart';
import 'package:singleton/core/states/new_state.dart';
import 'package:singleton/core/states/regular_state.dart';

class StateView extends StatefulWidget {
  const StateView({super.key});

  @override
  State<StateView> createState() => _StateViewState();
}

class _StateViewState extends State<StateView> {
  final List<BaseState> states = [
    AnotherNewState(),
    NewState.getLabel(),
    RegularState()
  ];

  void _setLabelValues([String label = 'Singlenton Examples']) {
    for (var state in states) {
      state.setState(label);
    }
    setState(() {});
  }

  void _reset() {
    for (var state in states) {
      state.resetLabel();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var state in states) Text(state.currentLabel),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _setLabelValues,
                    child: const Text('Change to States')),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _reset, child: const Text('Reset to States'))
              ],
            ),
          )),
    );
  }
}
