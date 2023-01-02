import 'package:flutter/material.dart';

class BurgerInformationLabel extends StatelessWidget {
  final String label;

  const BurgerInformationLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(label, style: const TextStyle(fontWeight: FontWeight.bold));
  }
}

class PizzaInformationLabel extends StatelessWidget {
  final String label;

  const PizzaInformationLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(label, style: const TextStyle(fontWeight: FontWeight.bold));
  }
}
