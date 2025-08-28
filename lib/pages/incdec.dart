import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page1.dart';
import 'package:flutter_application_1/pages/colorapp.dart';

class Landing extends StatefulWidget {
  @override
  _Landing createState() => _Landing();
}

class _Landing extends State<Landing> {
  int x = 0;
  int selctedIndex = 0;

  void add() {
    setState(() {
      x++;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Incremented counter = $x"),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void sub() {
    setState(() {
      x--;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Decremented counter = $x"),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => landingPage()),
              ),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Model"), backgroundColor: Colors.teal),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: IconButton(
                  onPressed: () => add(),
                  icon: Icon(Icons.add),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$x", // display value
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: IconButton(
                  onPressed: () => sub(),
                  icon: Icon(Icons.exposure_minus_1_outlined),
                ),
              ),
            ),
          ],
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
            ); }
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
          BottomNavigationBarItem(label: "Increment", icon: Icon(Icons.add)),
        ],
      ),
    );
  }

}
