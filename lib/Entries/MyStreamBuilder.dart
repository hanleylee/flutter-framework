import 'dart:async';

import 'package:flutter/material.dart';

class MyStreamBuilder extends StatefulWidget {
  const MyStreamBuilder({Key? key}) : super(key: key);

  @override
  State<MyStreamBuilder> createState() => _MyStreamBuilderState();
}

class _MyStreamBuilderState extends State<MyStreamBuilder> {
  final future = Future.delayed(Duration(seconds: 1), () => 42);
  final stream = Stream.periodic(Duration(seconds: 1), (_) => 42);
  // broadcast 可以被多个地方监听, 但是不会缓存旧值
  final controller = StreamController.broadcast();

  @override
  initState() {
    // 五秒钟之后发射元素
    Future.delayed(Duration(seconds: 5), () {
      controller.stream.listen((event) {
        print("event: $event");
      }, onError: (err) => print("ERROR: $err"), onDone: () => print("DONE"));
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.headlineMedium!,
          child: Column(
            children: [
              ElevatedButton(child: Text("10"), onPressed: () => controller.sink.add(10)),
              ElevatedButton(child: Text("1"), onPressed: () => controller.sink.add(1)),
              ElevatedButton(child: Text("Hi"), onPressed: () => controller.sink.add("Hi")),
              ElevatedButton(child: Text("Error"), onPressed: () => controller.sink.addError("opps")),
              ElevatedButton(child: Text("Close"), onPressed: () => controller.sink.close()),
              StreamBuilder(
                stream: controller.stream,
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Text("NONE: 没有数据流");
                      break;
                    case ConnectionState.waiting:
                      return Text("WAITING: 等待数据流");
                      break;
                    case ConnectionState.active:
                      if (snapshot.hasError) {
                        return Text("ACTIVE: 错误: ${snapshot.error}");
                      } else {
                        return Text("ACTIVE: 正常: ${snapshot.data}");
                      }
                      break;
                    case ConnectionState.done:
                      return Text("DONE: 数据流关闭");
                      break;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
