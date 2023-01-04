import 'package:abstract_factory/core/interfaces/base/i_widgets_factory.dart';
import 'package:abstract_factory/core/interfaces/i_activity_indicator.dart';
import 'package:abstract_factory/core/interfaces/i_switch_widget.dart';
import 'package:abstract_factory/core/interfaces/i_slider_widget.dart';
import 'package:abstract_factory/core/interfaces/i_button_widget.dart';
import 'package:abstract_factory/core/widgets/cupertino/activity_indicator.dart';
import 'package:abstract_factory/core/widgets/cupertino/button.dart';
import 'package:abstract_factory/core/widgets/cupertino/slider.dart';
import 'package:abstract_factory/core/widgets/cupertino/switch.dart';

class CupertinoWidgetsFac implements IWidgetsFac {
  @override
  IButton createButton() => CupertinoButtonWidget();

  @override
  ISlider createSlider() => CupertinoSliderWidget();

  @override
  ISwitch createSwitch() => CupertinoSwitchWidget();

  @override
  IActivityIndicator createActivityIndicator() =>
      CupertinoActivityIndicatorWidget();

  @override
  String getLabel() {
    return 'Cupertino Widgets';
  }

  @override
  String getPlatformLabel() {
    return 'iOS';
  }
}
