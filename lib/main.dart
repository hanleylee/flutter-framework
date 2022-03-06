import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: Home(),
  ));
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
        // child: Text('Hello, world'),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Album'),
            ),
          ],
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
