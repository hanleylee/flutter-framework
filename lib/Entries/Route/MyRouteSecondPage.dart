import 'package:flutter/material.dart';

class MyRouteSecondPage extends StatelessWidget {
  const MyRouteSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text("btn1"))
      ]),
    );
  }
}
