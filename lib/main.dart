import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttomName = 'Joshua';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter App'),
          ),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  color: Colors.blueGrey,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.yellowAccent),
                        onPressed: () {},
                        child: Text(buttomName),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (buttomName == 'Joshua') {
                              buttomName = 'Jean Marie';
                            } else {
                              buttomName = 'Joshua';
                            }
                          });
                        },
                        child: const Text('Click Me'),
                      )
                    ],
                  ),
                )
              : Image.asset('image/me.jpg'),
        ),

        //bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home, size: 30),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings, size: 30),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
