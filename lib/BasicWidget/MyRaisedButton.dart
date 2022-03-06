import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print(123);
      },
    );
  }
}
