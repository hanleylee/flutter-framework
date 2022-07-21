import 'package:flutter/material.dart';
import 'package:myapp/Enterable/ListItemType.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {},
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
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: () {
          print(123);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app',
    // home: Home(),
    initialRoute: "/home",
    theme: ThemeData(
      brightness: Brightness.dark,
      accentColor: Colors.black,
      primaryColor: Colors.lightBlue,
      iconTheme: const IconThemeData(color: Colors.yellow),
      textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.red)),
    ),
    routes: {"/home": (_) => Home()},
  ));
}
