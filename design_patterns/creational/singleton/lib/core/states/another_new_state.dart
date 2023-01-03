import 'package:singleton/core/states/base/base_state.dart';

class AnotherNewState extends BaseState {
  static final AnotherNewState _instance = AnotherNewState._internal();

  factory AnotherNewState() => _instance;

  AnotherNewState._internal() {
    initialLabel = 'Created by AnotherNewState instance';
  }
}
