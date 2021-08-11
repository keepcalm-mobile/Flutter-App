import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  Color currentColor = Colors.white;

  void changeColor() {
    setState(() {
      currentColor =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: currentColor,
        child: InkWell(
          onTap: () => changeColor(),
          child:
              Center(child: Text("Hey there", style: TextStyle(fontSize: 25))),
        ),
      ),
    );
  }
}
