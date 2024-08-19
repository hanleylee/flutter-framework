import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        leading: IconButton(
          onPressed: () {
            debugPrint("Menu is tapped!");
          },
          icon: const Icon(Icons.menu),
          color: Colors.red,
        ),
      ),
    );
  }
}
