import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DemoState> buildEffect() {
  return combineEffects(<Object, Effect<DemoState>>{
    DemoAction.action: _onAction,
  });
}

_onAction(Action action, Context<DemoState> ctx) {
  return false;
}
