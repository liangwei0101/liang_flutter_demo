import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BusinessState> buildReducer() {
  return asReducer(
    <Object, Reducer<BusinessState>>{
      BusinessAction.query: _onQuery,
    },
  );
}

BusinessState _onQuery(BusinessState state, Action action) {
  print('我是值真正更新的地方');
  final BusinessState newState = state.clone();
  newState.userList = action.payload;
  return newState;
}
