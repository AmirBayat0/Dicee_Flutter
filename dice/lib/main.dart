// ignore_for_file: prefer_const_constructors, duplicate_ignore, deprecated_member_use, avoid_print, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1; // This var changes the dicee number
  int rightDiceNumber = 4; // This var changes the dicee number

  void ChangeDiceeFace() {
    /* The Function change Dicee Face, Use that in
  onPressed-func of FlatButton-class */
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dicee",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontFamily: 'Pacifico',
            ),
          ),
          backgroundColor: Colors.pinkAccent[400],
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              ChangeDiceeFace(); //Use Change Dicee Class
            },
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
