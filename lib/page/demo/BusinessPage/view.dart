import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BusinessState state, Dispatch dispatch, ViewService viewService) {

  var buildListView = ListView.builder(
    itemCount: state.userList.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('编号:' +
              state.userList[index].no.toString() +
              '名称:' +
              state.userList[index].name.toString() +
              '邮箱:' +
              state.userList[index].email.toString()),
        ),
      );
    },
  );

  return Scaffold(appBar: null, body: Center(child: buildListView));
}
