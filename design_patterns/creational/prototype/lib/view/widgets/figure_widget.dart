import 'package:flutter/material.dart';
import 'package:prototype/core/prototypes/figures/base/base_figure.dart';
import 'package:prototype/view/widgets/sized_column.dart';

class FigureColumn extends StatelessWidget {
  final BaseFigure figure;
  final BaseFigure figureDuplicate;
  final VoidCallback onRandomisePropertiesPressed;
  final VoidCallback onDuplicatePressed;

  const FigureColumn(
      {super.key,
      required this.figure,
      required this.figureDuplicate,
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
              label: 'Original Figure',
              child: figure.render(),
            ),
            const SizedBox(width: 20),
            SizedColumn(
              label: 'Duplicated Figure',
              child: figureDuplicate.render(),
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
