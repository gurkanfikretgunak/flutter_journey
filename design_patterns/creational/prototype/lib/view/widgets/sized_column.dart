import 'package:flutter/material.dart';

class SizedColumn extends StatelessWidget {
  final String label;
  final Widget child;

  const SizedColumn({
    super.key,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(label),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }
}
