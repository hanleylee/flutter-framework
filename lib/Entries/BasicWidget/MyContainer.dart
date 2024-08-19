import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Text('bottom'),
      ),
    );
  }
}
