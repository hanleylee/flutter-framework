import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({Key? key}) : super(key: key);

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 使用 Stack 组件去叠加视图，便于直接控制视图坐标
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            // 手势识别
            child: Container(color: Colors.red, width: 50, height: 50),
            // 红色子视图
            onTap: () => print("Tap"),
            // 点击回调
            onDoubleTap: () => print("Double Tap"),
            // 双击回调
            onLongPress: () => print("Long Press"),
            // 长按回调
            onPanUpdate: (e) {
              // 拖动回调
              setState(() {
                // 更新位置
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
          ),
        )
      ],
    );
  }
}
