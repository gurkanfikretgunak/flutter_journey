import 'package:flutter/material.dart';
import 'package:prototype/core/prototypes/labels/base/base_label.dart';
import 'package:prototype/view/widgets/sized_column.dart';

class LabelColumn extends StatelessWidget {
  final BaseLabel label;
  final BaseLabel labelDuplicate;
  final VoidCallback onRandomisePropertiesPressed;
  final VoidCallback onDuplicatePressed;

  const LabelColumn(
      {super.key,
      required this.label,
      required this.labelDuplicate,
      required this.onRandomisePropertiesPressed,
      required this.onDuplicatePressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedColumn(
              label: 'Original Label',
              child: label.render(),
            ),
            const SizedBox(width: 20),
            SizedColumn(
              label: 'Duplicated Label',
              child: labelDuplicate.render(),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: onRandomisePropertiesPressed,
          child: const Text('Randomise properties'),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: onDuplicatePressed,
          child: const Text('Duplicate'),
        ),
      ],
    );
  }
}
