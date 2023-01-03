import 'package:singleton/core/states/base/base_state.dart';

class RegularState extends BaseState {
  RegularState() {
    initialLabel = 'Created by RegularState instance';
    stateLabel = initialLabel;
  }
}
