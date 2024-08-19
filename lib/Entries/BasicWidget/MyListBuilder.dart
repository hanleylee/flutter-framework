import 'package:flutter/material.dart';

class MyListBuilder extends StatelessWidget {
  const MyListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 100, // 元素个数
          itemExtent: 50.0, // 列表项高度
          itemBuilder: (BuildContext context, int index) => ListTile(title: Text("title $index"), subtitle: Text("body $index"))),
    );
  }
}
