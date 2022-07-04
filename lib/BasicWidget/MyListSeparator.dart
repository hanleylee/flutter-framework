import 'package:flutter/material.dart';

class MyListSeparator extends StatelessWidget {
  const MyListSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemCount: 100,
          separatorBuilder: (BuildContext context, int index) => index % 2 == 0 ? Divider(color: Colors.green) : Divider(color: Colors.red),
          //index 为偶数，创建绿色分割线；index 为奇数，则创建红色分割线
          itemBuilder: (BuildContext context, int index) => ListTile(title: Text("title $index"), subtitle: Text("body $index")) // 创建子 Widget
          ),
    );
  }
}
