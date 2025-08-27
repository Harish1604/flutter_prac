import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/landingpage1.dart';
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
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Single tap"),duration: Duration(milliseconds: 50),));
  }

  void doubleTap() {
    setState(() {
      colorBox = ondoubleTap[random.nextInt(ondoubleTap.length)];
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Double Tap"),duration: Duration(milliseconds: 50),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap to change..."),
        backgroundColor: Colors.teal,
        leading: IconButton(onPressed:() =>  Navigator.push(context,MaterialPageRoute(builder: (context)=>landingPage())), icon: Icon(Icons.arrow_back)),
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
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Landing()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "Colors",
            icon: Icon(Icons.panorama_fish_eye_outlined),
          ),
          BottomNavigationBarItem(label: "Increment", icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
