import 'package:flutter/material.dart';
import './BasicWidget/MyWidget.dart';
import './MyTheme.dart';
import './MyGestureDetector.dart';

enum ListItemType {
  none,
  basicWidget,
  theme,
  gestureDetector,
}

extension ListItemTypeExtension on ListItemType {
  String get rowName {
    switch (this) {
      case ListItemType.none:
        return 'none';
      case ListItemType.basicWidget:
        return 'Basic Widget';
      case ListItemType.theme:
        return 'Theme';
      case ListItemType.gestureDetector:
        return 'GestureDetector';
    }
  }

  Widget get widget {
    Widget content;
    switch (this) {
      case ListItemType.none:
        content = const Text('none');
        break;
      case ListItemType.basicWidget:
        content = MyWidget();
        break;
      case ListItemType.theme:
        content = MyThemeWidget();
        break;
      case ListItemType.gestureDetector:
        content = MyGestureDetector();
        break;
    }
    return Scaffold(
      body: content,
    );
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
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue,
      accentColor: Colors.cyan,
    ),
  ));
}
