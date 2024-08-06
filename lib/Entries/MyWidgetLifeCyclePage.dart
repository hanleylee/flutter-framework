import 'package:flutter/material.dart';

class WidgetLiftCyclePage extends StatefulWidget {

  /// 1. 初始化期的生命周期函数
  /// 创建 StatefulWidget 之后调用的第一个方法
  /// 该方法是抽象方法, 必须覆盖
  @override
  _WidgetLiftCyclePageState createState() => _WidgetLiftCyclePageState();
}

class _WidgetLiftCyclePageState extends State<WidgetLiftCyclePage> {

  /// 2. 初始化期的生命周期函数
  /// 该方法是创建 Widget 组件时除构造方法之外的第一个方法
  /// 该方法对应 Android 中的 onCreate 方法
  /// 对应 iOS 中的 viewDidLoad 方法
  /// 常用用法 : 在该方法中执行一些初始化操作
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  /// 3. 更新期的生命周期函数
  /// 方法调用时机 :
  /// ① 创建 Widget 组件时 , 调用完 initState 方法后 , 调用该方法
  /// ② InheritedWidget 相关 ( 暂不涉及 )
  @override
  void didChangeDependencies() {
    /// 该方法在开始处必须调用父类的方法
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  /// 4. 更新期的生命周期函数
  /// 方法调用时机 :
  /// ① 调用完 didChangeDependencies 方法后调用该方法
  /// ② 调用 setState 方法之后 , 该方法也会被调用 ;
  /// 页面每次渲染时都会调用该方法
  @override
  Widget build(BuildContext context) {
    print("build");

    return Center(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            // 点击事件
            onPressed: (){
              // 回调更新期 生命周期函数
              setState(() {

              });
            },
            child: Text("调用 setState() 方法"),
          ),
        ],
      ),
    );
  }


  /// 5. 更新期的生命周期函数
  /// 方法调用时机 : 该生命周期方法不经常调用 , 只有在父容器组件重绘时才调用该方法
  /// 方法机制 : 传入的 oldWidget 参数是旧的组件信息 ,
  /// 将当前的 Widget 与旧的 Widget 进行对比 , 如果不相等 , 便执行额外操作
  /// 如 : 组件的属性不相等 , 字段的值不相等
  @override
  void didUpdateWidget(WidgetLiftCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  /// 6 . 销毁期的生命周期函数
  /// 方法调用时机 : 该生命周期方法不经常调用 , 只有在组件被移除时才调用
  /// 该方法在 dispose 方法之前被调用
  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  /// 7 . 销毁期的生命周期函数
  /// 方法调用时机 : 组件被销毁时调用 , 要在该方法中进行资源的释放与销毁操作
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }


}


