import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),

    );
  }
}
