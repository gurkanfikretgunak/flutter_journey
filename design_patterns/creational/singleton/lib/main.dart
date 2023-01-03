import 'package:flutter/material.dart';
import 'package:singleton/view/state.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StateView(),
    );
  }
}
