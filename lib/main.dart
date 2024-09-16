import 'package:flutter/material.dart';
import 'principal.dart';

void main() {
  runApp(AmazonPrimeApp());
}

class AmazonPrimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
    );
  }
}
