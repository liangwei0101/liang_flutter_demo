import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

import '../../../api/user.dart';

Effect<BusinessState> buildEffect() {
  return combineEffects(<Object, Effect<BusinessState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<BusinessState> ctx) {

  // Http请求
  UserApi.getUser().then((value){
    ctx.dispatch(BusinessActionCreator.updateAction(value));
  });
}
