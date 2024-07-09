// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  final List<Widget> myList = List.generate(
    10,
    (index) => Text("Hello World"),
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 56, 1, 75),
          title: const Text(
            "Hello World",
            style: TextStyle(
              color: Color.fromARGB(255, 253, 253, 253),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.asset(
              "images/sepatu4.png",
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage("images/sepatu4.png"),
            // ),
          )
        ),
      ),
    );
  }
}
