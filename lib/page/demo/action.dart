import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DemoAction { action }

class DemoActionCreator {
  static Action onAction(int index) {
    return Action(DemoAction.action, payload: index);
  }
}
