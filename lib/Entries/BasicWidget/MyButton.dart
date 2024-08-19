import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          color: Colors.red,
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: () => print('FloatingActionButton pressed'),
                child: Text('Btn'),
              ),
              TextButton(onPressed: () => print("FlatButton pressed"), child: Text("Btn")),
              ElevatedButton(child: Text("Button1"), onPressed: () => print("2")),
              ElevatedButton(child: Text("Button2"), onPressed: () => print("1")),
              ElevatedButton(
                  onPressed: () {
                    dynamic num1 = 1;
                    var str1 = num1 as String; // will exception
                  },
                  child: const Text("Button3")),
            ],
          ),
        ),
      ),
    );
  }
}
