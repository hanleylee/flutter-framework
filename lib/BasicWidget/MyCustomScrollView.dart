import 'package:flutter/material.dart';

class MyCustomScrollView extends StatelessWidget {
  const MyCustomScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        //SliverAppBar 作为头图控件
        title: Text('CustomScrollView Demo'), // 标题
        floating: true, // 设置悬浮样式
        flexibleSpace: Image.network("https://xx.jpg", fit: BoxFit.cover), // 设置悬浮头图背景
        expandedHeight: 300, // 头图控件高度
      ),
      SliverList(
        //SliverList 作为列表控件
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(title: Text('Item #$index')), // 列表项创建方法
          childCount: 100, // 列表元素个数
        ),
      ),
    ]);
  }
}
