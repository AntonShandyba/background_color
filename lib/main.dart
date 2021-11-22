import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int redColor = 254;
  int greenColor = 254;
  int blueColor = 254;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          setState(() {
            redColor = Random().nextInt(256);
            greenColor = Random().nextInt(256);
            blueColor = Random().nextInt(256);
          });
        },
        child: Scaffold(
          body: const Center(
            child: Text('Hey there'),
          ),
          backgroundColor: Color.fromRGBO(redColor, greenColor, blueColor, 1),
        ),
      ),
    );
  }
}
