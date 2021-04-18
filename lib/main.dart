import 'package:flutter/material.dart';
import 'package:korean_app/DEMO.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Teko',
      ),
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}