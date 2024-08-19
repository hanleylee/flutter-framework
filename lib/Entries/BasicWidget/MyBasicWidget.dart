import 'package:flutter/material.dart';
import 'package:myapp/Enterable/BasicWidgetType.dart';

class MyBasicWidget extends StatelessWidget {
  MyBasicWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: BasicWidgetType.values.map((type) {
        return ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => type.widget));
          },
          leading: Icon(Icons.map),
          title: Text(type.rowName),
        );
      }).toList()),
    );
  }
}
