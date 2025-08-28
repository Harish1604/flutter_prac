import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/incdec.dart';
import 'package:flutter_application_1/pages/colorapp.dart';

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
        title: Text("Landing page...", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child:ElevatedButton(
            onPressed:
                () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorApp()),
                  ),
                },
           child: Text("Press me"),
           style: ElevatedButton.styleFrom(backgroundColor: Colors.teal)
           
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
