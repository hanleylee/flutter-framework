import 'package:flutter/material.dart';

class MyAppLifeCycle extends StatefulWidget {
  const MyAppLifeCycle({Key? key}) : super(key: key);

  @override
  State<MyAppLifeCycle> createState() => _MyAppLifeCycleState();
}

class _MyAppLifeCycleState extends State<MyAppLifeCycle> with WidgetsBindingObserver {

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("$state");
    // 进入后台: AppLifecycleState.resumed -> AppLifecycleState.inactive -> AppLifecycleState.paused
    // 进入前台: AppLifecycleState.paused -> AppLifecycleState.inactive -> AppLifecycleState.resumed
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
  }
}
