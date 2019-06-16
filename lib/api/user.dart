import 'dart:async';
import 'dart:convert';

import '../utils/HttpUtils.dart';
import '../apiModel/user.dart';

class UserApi {

  // GET 请求
  static Future<List<User>> getUser() async {

    var result = await HttpUtils.request(
      '/user',
      method: HttpUtils.GET,
    );

    var usersJson = json.decode(result);
    List<User> userList = (usersJson as List).map((i)=>User.fromJson(i)).toList();
    return userList;
  }

  // POST 请求
  handleAddShelf() async {
    var result =
    await HttpUtils.request('/user', method: HttpUtils.POST, data: {
      'id': 1,
    });
  }

// PUT 请求
  handleEditShelf() async {
    var result = await HttpUtils.request('/user', method: HttpUtils.PUT, data: {
      'id': 1,
    });
  }

// DELETE 请求
  handleDelShelf() async {
    var result =
    await HttpUtils.request('/user', method: HttpUtils.DELETE, data: {
      'id': 1,
    });
  }
}
