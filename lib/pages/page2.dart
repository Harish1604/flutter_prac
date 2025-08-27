import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/pages/page1.dart';

class ColorApp extends StatefulWidget {
  @override
  _ColorApp createState() => _ColorApp();
}

class _ColorApp extends State<ColorApp> {
  Color colorBox = Colors.grey;
  int selctedIndex = 0;

  Random random = Random();

  List<Color> onsingleTap = [Colors.red, Colors.blue, Colors.green];
  List<Color> ondoubleTap = [Colors.purple, Colors.indigo, Colors.lime];

  void oneTap() {
    setState(() {
      colorBox = onsingleTap[random.nextInt(onsingleTap.length)];
    });
  }

  void doubleTap() {
    setState(() {
      colorBox = ondoubleTap[random.nextInt(ondoubleTap.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap to change..."),
        backgroundColor: Colors.teal,
      ),

      body: GestureDetector(
        onDoubleTap: doubleTap,
        onTap: oneTap,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: colorBox,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 200,
            height: 200,

            child: Center(child: Text("Tap me")),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: selctedIndex,

        onTap: (index) {
          setState(() {
            selctedIndex = index;
          });

          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => landingPage()),
            );
          }
        },

        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),

          BottomNavigationBarItem(
            label: "Colors",
            icon: Icon(Icons.panorama_fish_eye_outlined),
          ),
        ],
      ),
    );
  }
}
