// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          color: const Color.fromARGB(255, 4, 72, 139),
          child: FittedBox(
            alignment: Alignment.topCenter,
            child: Text(
              "Halooooooooooooooooooooo",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}