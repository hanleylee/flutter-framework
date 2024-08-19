import 'package:flutter/material.dart';

class MyListener extends StatelessWidget {
  const MyListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        child: Container(
          color: Colors.red, // 背景色红色
          width: 300,
          height: 300,
        ),
        onPointerDown: (event) => print("down $event"), // 手势按下回调
        onPointerMove: (event) => print("move $event"), // 手势移动回调
        onPointerUp: (event) => print("up $event"), // 手势抬起回调
      ),
    );
  }
}
