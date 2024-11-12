import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Doto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 400,
              child: HorizontalScroller(),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('ListTile with Regular Font',
                  style: TextStyle(fontFamily: 'Doto')),
            ),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('ListTile with Bold Font',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('ListTile with Italic Font',
                  style: TextStyle(
                      fontFamily: 'Doto', fontStyle: FontStyle.normal)),
            ),
            const ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Default Device Font'),
            ),
            const SizedBox(height: 20), // Space between elements
          ],
        ),
      ),
    );
  }

  ListView HorizontalScroller() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.network('https://placehold.co/600x400@2x.png',
              width: 200, height: 200),
        );
      },
    );
  }
}
