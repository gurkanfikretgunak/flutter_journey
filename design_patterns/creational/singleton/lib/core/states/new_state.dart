import 'package:singleton/core/states/base/base_state.dart';

class NewState extends BaseState {
  static NewState? _instance;

  NewState._internal() {
    initialLabel = " Created by instance";
    stateLabel = initialLabel;
  }
  static NewState getLabel() => _instance ?? NewState._internal();
}
