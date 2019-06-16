import 'package:fish_redux/fish_redux.dart';

class DemoState implements Cloneable<DemoState> {

  int selectedIndex = 0;

  @override
  DemoState clone() {
    return DemoState();
  }
}

DemoState initState(Map<String, dynamic> args) {
  return DemoState();
}
