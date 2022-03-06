import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          print('Menu is tapped!');
        },
        icon: const Icon(Icons.menu),
        color: Colors.red,
      ),
    );
  }
}
