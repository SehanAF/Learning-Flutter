import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,
          title: Container(
            height: 35,
            color: Colors.amber,
          ),
          centerTitle: false,
          actions: [
            Container(
              width: 35,
              height: 100,
              color: Colors.purple,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              width: 50,
              height: 100,
              color: Colors.amber,
            ),
          ),
          flexibleSpace: Container(
            height: 50,
            color: Colors.green,
          ),
        ),
      )
    );
  }
}