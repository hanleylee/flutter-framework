import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/// 123
class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MyListUltimate();
    return Scaffold(
      body: Column(
        children: [
          // 为何不会显示?
          Expanded(child: MyListVertical()),
          Expanded(
            child: MyListHorizontal(),
            flex: 10,
          ),
          Expanded(child: MyListUltimate()),
        ],
      ),
    );
    // return MyListVertical();
    // return Column(
    //   children: [MyListVertical(), MyListHorizontal()],
    // );
  }
}

class MyListVertical extends StatelessWidget {
  const MyListVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ],
    ));
  }
}

class MyListHorizontal extends StatelessWidget {
  const MyListHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class MyListUltimate extends StatelessWidget {
  List<String> items = List<String>.generate(10000, (index) => "item $index");

  MyListUltimate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                items.removeAt(index);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text('$item'),
              ));
        });
  }
}
