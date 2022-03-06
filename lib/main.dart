import 'package:flutter/material.dart';
import './BasicWidget/MyWidget.dart';

enum ListItemType {
  none,
  basicWidget,
}

extension ListItemTypeExtension on ListItemType {
  String get rowName {
    switch (this) {
      case ListItemType.none:
        return 'none';
      case ListItemType.basicWidget:
        return 'Basic Widget';
      default:
        return 'not defined';
    }
  }

  Widget get widget {
    switch (this) {
      case ListItemType.none:
        return const Text('none');
      case ListItemType.basicWidget:
        return MyWidget();
      default:
        return const Text('not defined');
    }
  }

  void talk() {
    print('meow');
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: ListItemType.values.map((type) {
            return ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => type.widget));
              },
              leading: const Icon(Icons.map),
              title: Text(type.rowName),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: Home(),
  ));
}
