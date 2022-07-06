import 'package:flutter/material.dart';

class MyRouteSecondPage extends StatelessWidget {
  const MyRouteSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Text("btn1"))
    ]);
  }
}
