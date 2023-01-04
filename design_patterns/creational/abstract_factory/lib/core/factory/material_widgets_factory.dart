import 'package:abstract_factory/core/interfaces/base/i_widgets_factory.dart';
import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';
import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:abstract_factory/core/widgets/material/activity_indicator.dart';
import 'package:abstract_factory/core/widgets/material/button.dart';
import 'package:abstract_factory/core/widgets/material/slider.dart';
import 'package:abstract_factory/core/widgets/material/switch.dart';

class MaterialWidgetFac implements IWidgetsFac {
  @override
  IButton createButton() => MaterialButtonWidget();

  @override
  ISlider createSlider() => MaterialSliderWidget();

  @override
  ISwitch createSwitch() => MaterialSwitchWidget();
  @override
  IActivityIndicator createActivityIndicator() =>
      MaterialActivityIndicatorWidget();

  @override
  String getLabel() {
    return 'Material Widgets';
  }

  @override
  String getPlatformLabel() {
    return 'Android';
  }
}
