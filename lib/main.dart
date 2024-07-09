
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.red,
              width: 400,
              height: 400,
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}