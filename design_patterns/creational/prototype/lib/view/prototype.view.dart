import 'package:flutter/material.dart';
import 'package:prototype/core/prototypes/figures/base/base_figure.dart';
import 'package:prototype/core/prototypes/figures/circle_figure.dart';
import 'package:prototype/core/prototypes/figures/retangle_figure.dart';
import 'package:prototype/core/prototypes/labels/base/base_label.dart';
import 'package:prototype/core/prototypes/labels/mixer_label.dart';
import 'package:prototype/view/widgets/figure_widget.dart';
import 'package:prototype/view/widgets/label_widget.dart';

class PrototypeView extends StatefulWidget {
  const PrototypeView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PrototypeViewState createState() => _PrototypeViewState();
}

class _PrototypeViewState extends State<PrototypeView> {
  final BaseFigure _circle = CircleFigure.initial();
  final BaseFigure _rectangle = RetangleFigure.initial();
  final BaseLabel _label = MixerLabel.initial();
  final BaseFigure _placeHolderCircle = CircleFigure.placeholder();
  final BaseFigure _placeHolderRetangle = RetangleFigure.placeholder();
  final BaseLabel _placeHolderLabel = MixerLabel.placeholder();

  BaseFigure? _circleDuplicate;
  BaseFigure? _rectangleDuplicate;
  BaseLabel? _labelDuplicate;

  @override
  void initState() {
    super.initState();
    _labelDuplicate = _placeHolderLabel;
    _circleDuplicate = _placeHolderCircle;
    _rectangleDuplicate = _placeHolderRetangle;
  }

  void _randomiseCircleProperties() {
    setState(() {
      _circle.randomiseProperties();
    });
  }

  void _randomiseLabelProperties() {
    setState(() {
      _label.randomiseProperties();
    });
  }

  void _duplicateCircle() {
    setState(() {
      _circleDuplicate = _circle.dublicate();
    });
  }

  void _duplicateLabel() {
    setState(() {
      _labelDuplicate = _label.dublicate();
    });
  }

  void _randomiseRectangleProperties() {
    setState(() {
      _rectangle.randomiseProperties();
    });
  }

  void _duplicateRectangle() {
    setState(() {
      _rectangleDuplicate = _rectangle.dublicate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FigureColumn(
                figure: _circle,
                figureDuplicate: _circleDuplicate!,
                onDuplicatePressed: _duplicateCircle,
                onRandomisePropertiesPressed: _randomiseCircleProperties,
              ),
              const Divider(),
              FigureColumn(
                figure: _rectangle,
                figureDuplicate: _rectangleDuplicate!,
                onDuplicatePressed: _duplicateRectangle,
                onRandomisePropertiesPressed: _randomiseRectangleProperties,
              ),
              LabelColumn(
                label: _label,
                labelDuplicate: _labelDuplicate!,
                onDuplicatePressed: _duplicateLabel,
                onRandomisePropertiesPressed: _randomiseLabelProperties,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
