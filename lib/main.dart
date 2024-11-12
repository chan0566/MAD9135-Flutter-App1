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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Orbitron'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              child: topHorizontalScroller(),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Satisfy - regular',
                  style: TextStyle(fontFamily: 'Satisfy')),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Caveat - regular',
                  style: TextStyle(fontFamily: 'Caveat')),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Orbitron - regular',
                  style: TextStyle(fontFamily: 'Orbitron')),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('Orbitron - bold',
                  style: TextStyle(
                      fontFamily: 'Orbitron', fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20), // Space between elements
            SizedBox(
              height: 300,
              child: bottomHorizontalScroller(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  ListView topHorizontalScroller() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final imageUrls = [
          'https://plus.unsplash.com/premium_photo-1707353401897-da9ba223f807?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          'https://plus.unsplash.com/premium_photo-1707353402003-effbc48c547d?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          'https://plus.unsplash.com/premium_photo-1707353400249-1d96e1a7e0e6?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ];
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.network(imageUrls[index], width: 300, height: 200));
      },
    );
  }

  ListView bottomHorizontalScroller() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final images = [
          'assets/images/Blue-Dog.jpg',
          'assets/images/Yellow-Dog.jpg',
          'assets/images/Red-Dog.jpg',
        ];
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(images[index], width: 200, height: 300));
      },
    );
  }
}
