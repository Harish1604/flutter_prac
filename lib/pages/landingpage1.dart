import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  @override
  _Landing createState() => _Landing();

}

class _Landing extends State<Landing> {

  int x = 0;

  void add() {
    setState(() {
      x++;
    });
  }

    void sub() {
    setState(() {
      x--;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Model"
        ),
        backgroundColor: Colors.teal

        ),

        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: IconButton(onPressed:() => add(), icon: Icon(Icons.add)),
                )
              ),
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: IconButton(onPressed:() => sub(), icon: Icon(Icons.exposure_minus_1_outlined),
                )
              )
              ),
              
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Text("Add"),
                )
              ),
            ],
          ),
        ),
              
      );
    

  }

  @override
  
  
}

