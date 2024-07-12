// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

// Stateles vs Stateful widget - Counter APP

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variabel
  int _counter = 0;

  // Method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the bottom this many times: "),

            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 20),
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment"),
            )
          ],
        ),
      )
    );
  }
}