import 'package:flutter/material.dart';
import 'package:myapp/Entries/Route/MyRouteSecondPage.dart';

class MyRouteFirstPage extends StatelessWidget {
  const MyRouteFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const MyRouteSecondPage())).then((value) {
              debugPrint(value);
            });
          },
          child: const Text("btn1"))
    ]);
  }
}
