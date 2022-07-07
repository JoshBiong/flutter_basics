import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter App')),
        ),
        body: const Center(child: Text('Body')),
        bottomNavigationBar:  BottomNavigationBar(items: const[
          
          BottomNavigationBarItem(label: 'Favorite',
            icon: Icon(Icons.favorite, color:Colors.pink,
            size:30)),
          BottomNavigationBarItem(label: 'Settings',
            icon: Icon(Icons.settings,
            color: Colors.yellowAccent,
            size: 30 ))
        ],)

      ),
    );
  }
}