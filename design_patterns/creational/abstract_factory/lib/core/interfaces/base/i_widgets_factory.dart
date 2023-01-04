import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';

abstract class IWidgetsFac {
  String getLabel();
  String getPlatformLabel();
  ISlider createSlider();
  ISwitch createSwitch();
  IButton createButton();
  IActivityIndicator createActivityIndicator();
}
