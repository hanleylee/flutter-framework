import 'package:flutter/material.dart';

class MyFutureBuilder extends StatelessWidget {
  const MyFutureBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder(
          // future: Future.delayed(const Duration(seconds: 2), () => 456),
          future: Future.delayed(const Duration(seconds: 2), () => throw ("oops")),
          initialData: 72,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            // 如果已经有 initialData 的话, state 不会为 waiting
            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return const CircularProgressIndicator();
            // }
            if (snapshot.hasError) {
              return const Icon(
                Icons.error,
                size: 80,
              );
            }
            if (snapshot.hasData) {
              return Text(
                "${snapshot.data}",
                style: const TextStyle(fontSize: 72),
              );
            }

            return CircularProgressIndicator();

            // throw "should not happen";
          },
        ),
      ),
    );
  }
}
