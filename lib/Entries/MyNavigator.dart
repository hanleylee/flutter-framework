import 'package:flutter/material.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Text("123")));
                // Navigator.popAndPushNamed(context, routeName)
                Navigator.popUntil(context, (route) {
                  print(route.settings.name);
                  return route.settings.name == "/";
                });
                // Navigator.pop(context);
                // Navigator.pop(context);
              },
              child: const Text("Button3")),
          ElevatedButton(
              onPressed: () {
              },
              child: const Text("Button3")),
          ElevatedButton(
              onPressed: () {
              },
              child: const Text("Button3")),
        ],
      ),
    );
  }
}
