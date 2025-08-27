import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/scorepage.dart';

class Game extends StatefulWidget {
  @override
  _Game createState() => _Game();
}

class _Game extends State<Game> {
  int selectedindex = 0;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    void _onTap() {
      setState(() {
        x++;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("One tap = +1")));
    }

    void _onDoubleTap() {
      setState(() {
        x += 5;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Double tap = +5")));
    }

    void _LongPress() {
      setState(() {
        x = 0;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Long Press = reser broo!!")));
    }

    return Scaffold(
      body: GestureDetector(
        onTap: () => _onTap(),
        onDoubleTap: () => _onDoubleTap(),
        onLongPress: () => _LongPress(),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Tap",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        currentIndex: selectedindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        onTap:
            (index) => setState(() {
              selectedindex = index;

              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScorePage(score :x)),
                );
              }
            }),

        items: [
          BottomNavigationBarItem(label: "game", icon: Icon(Icons.gamepad)),
          BottomNavigationBarItem(label: "score", icon: Icon(Icons.score)),
        ],
      ),
    );
  }
}


