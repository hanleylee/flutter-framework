import 'package:flutter/material.dart';

class MyThemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Text(
          'Text with a background color',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
