
// Import the Flutter material library for UI elements.
import "package:flutter/material.dart";

// Entry point of the Flutter application.
void main() {
  // Run the MyApp widget.
  runApp(const MyApp());
}

// Use 'stl' shortcut for StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}