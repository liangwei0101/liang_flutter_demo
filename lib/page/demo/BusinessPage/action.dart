import 'package:fish_redux/fish_redux.dart';
import '../../../apiModel/user.dart';

//TODO replace with your own action
enum BusinessAction { query }

class BusinessActionCreator {

  static Action updateAction(List<User> userList){
    print('由effect请求后dispatch的值来了');
    return Action(BusinessAction.query, payload: userList);
  }
}
