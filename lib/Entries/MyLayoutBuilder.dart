import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        print("hl_constraints: $constraints");
        return Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: const BoxDecoration(color: Colors.blue),
          child: const Text('bottom'),
        );
      }),
    );
  }
}
