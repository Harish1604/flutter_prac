import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/game.dart';


class ScorePage extends StatelessWidget {
  final int score;
  ScorePage({required this.score});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true, title : Text("Score"),),
      body: Center(
          child: Text("Score : $score"),
      ),
    );

  }
}







