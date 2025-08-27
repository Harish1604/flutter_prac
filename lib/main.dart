import 'dart:math';
import 'package:flutter/material.dart';
import '/pages/incdec.dart';
import '/pages/page1.dart';

void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingPage(),
    ));
  }
}

