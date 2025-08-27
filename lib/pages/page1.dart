import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page2.dart';

class landingPage extends StatefulWidget {
  @override
  _landingPage createState() => _landingPage();
}

class _landingPage extends State<landingPage> {
  int selctedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing page....", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.teal,
          ),
          child: IconButton(
            onPressed:
                () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorApp()),
                  ),
                },
            icon: Icon(Icons.next_plan),
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

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ColorApp()),
            );
          }
        },

        items: [
                    BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),


          BottomNavigationBarItem(label: "Colors" ,icon : Icon(Icons.panorama_fish_eye_outlined)),
        ],
      ),
    );
  }
}
