// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final MyAppBar = AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(
        "Layout Builder",
        style: TextStyle(color: Colors.white),
      ),
    );

    final heighBody = heightApp - paddingTop - MyAppBar.preferredSize.height;

    return Scaffold(
      appBar: MyAppBar,
      body: Container(
        width: widthApp,
        height: heighBody * 0.3,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(
              widthApp: widthApp,
            ),
            MyContainer(
              widthApp: widthApp,
            ),
            MyContainer(
              widthApp: widthApp,
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;

  MyContainer({Key? key, required this.widthApp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.5,
          color: Colors.red,
          child: Center(
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
