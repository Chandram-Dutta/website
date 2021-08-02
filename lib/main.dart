import 'package:flutter/material.dart';
import 'package:website/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chandram Dutta',
      home: HomePage(),
    );
  }
}
