import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/landingpage1.dart';
import 'package:flutter_application_1/pages/page1.dart';

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
