import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'section 1',
          style: TextStyle(color: Colors.white, backgroundColor: Colors.red),
        ),
        Text(
          'section 2',
          style: TextStyle(color: Colors.white, backgroundColor: Colors.yellow),
        ),
        Text(
          'section 3',
          style: TextStyle(color: Colors.white, backgroundColor: Colors.blue),
        ),
      ],
    );
  }
}
