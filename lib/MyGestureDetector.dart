import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Gesture");
        final snackar = SnackBar(content: Text('Tap'));
        Scaffold.of(context).showSnackBar(snackar);
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text('My Button'),
        ),
      ),
    );
  }
}
