import 'package:abstract_factory/core/factory/ios_widgets_factory.dart';
import 'package:abstract_factory/core/factory/material_widgets_factory.dart';
import 'package:abstract_factory/core/interfaces/base/i_widgets_factory.dart';
import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';
import 'package:flutter/material.dart';

class AbstractFactoryView extends StatefulWidget {
  const AbstractFactoryView({super.key});

  @override
  State<AbstractFactoryView> createState() => _AbstractFactoryViewState();
}

class _AbstractFactoryViewState extends State<AbstractFactoryView> {
  final List<IWidgetsFac> widgetsFactories = [
    MaterialWidgetFac(),
    CupertinoWidgetsFac()
  ];

  int _selectedIndex = 0;

  late IActivityIndicator _activityIndicator;

  late ISlider _slider;

  double _sliderValue = 50.0;

  late ISwitch _switch;

  bool _switchValue = false;

  String get _switchValueString => _switchValue ? 'ON' : 'OFF';

  late IButton _button;

  void _createWidgets() {
    _activityIndicator =
        widgetsFactories[_selectedIndex].createActivityIndicator();
    _slider = widgetsFactories[_selectedIndex].createSlider();
    _switch = widgetsFactories[_selectedIndex].createSwitch();
    _button = widgetsFactories[_selectedIndex].createButton();
  }

  void _setSelectedFactoryIndex(int? index) {
    setState(() {
      _selectedIndex = index!;
      _createWidgets();
    });
  }

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _setSwitchValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FactorySelection(
                    widgetsFactories: widgetsFactories,
                    selectedIndex: _selectedIndex,
                    onChanged: _setSelectedFactoryIndex),
                const Divider(),
                const Text('Widgets'),
                const Divider(),
                const Text('Sliders'),
                Text('${_sliderValue.toInt()}'),
                _slider.render(onChanged: _setSliderValue, value: _sliderValue),
                const Divider(),
                const Text('Process indicator'),
                _activityIndicator.render(),
                const Divider(),
                Text('Switch $_switchValueString'),
                _switch.render(value: _switchValue, onChanged: _setSwitchValue),
                const Divider(),
                const Text('Button'),
                _button.render(
                  label: "Click Me",
                  onChanged: (value) {},
                )
              ],
            ),
          )),
    );
  }
}

class FactorySelection extends StatelessWidget {
  final List<IWidgetsFac> widgetsFactories;
  final int selectedIndex;
  final ValueSetter<int?> onChanged;

  const FactorySelection({
    super.key,
    required this.widgetsFactories,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          for (var i = 0; i < widgetsFactories.length; i++)
            RadioListTile(
                title: Text(widgetsFactories[i].getLabel()),
                value: i,
                groupValue: selectedIndex,
                selected: i == selectedIndex,
                activeColor: Colors.black,
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: onChanged),
        ],
      ),
    );
  }
}
