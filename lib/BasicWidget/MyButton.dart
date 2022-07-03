import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        color: Colors.red,
        child: Column(
          children: [
            RaisedButton(child: Text("Button1"), onPressed: () => print("2")),
            RaisedButton(child: Text("Button2"), onPressed: () => print("1")),
            ElevatedButton(
                onPressed: () {
                  dynamic num1 = 1;
                  var str1 = num1 as String; // will exception
                },
                child: const Text("Button3")),
          ],
        ),
      ),
    );
  }
}
