import 'package:fish_redux/fish_redux.dart';
import '../../../apiModel/user.dart';

class BusinessState implements Cloneable<BusinessState> {

  BusinessState({this.userList});

  List<User> userList = new List<User>();

  @override
  BusinessState clone() {
    return BusinessState();
  }
}

BusinessState initState(Map<String, dynamic> args) {
  List<User> tempList = new List<User>();
  User user = new User();
  user.no = 0;
  user.name = '梁二狗';
  user.email = '1@qq.com';
  tempList.add(user);
  return BusinessState(userList: tempList);
}
