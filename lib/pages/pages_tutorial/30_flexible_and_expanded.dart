// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlexibleAndExpanded extends StatelessWidget {
  FlexibleAndExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible and Expanded'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text(
                'Container 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.brown,
              child: Text(
                'Container 2',
                style: TextStyle(color: Colors.white),
              )
            ),
          ),
          Expanded(
            flex: 5, // expanded use flex, expanded adalah flexible dengan fit FlexFit.tight
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
              child: Text(
                'Container 3',
                style: TextStyle(color: Colors.white),
              )
            ),
          ),
        ],
      ),
    );
  }
}