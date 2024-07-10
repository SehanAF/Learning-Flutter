import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormats extends StatelessWidget {
  const DateFormats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Format Date"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            //DateFormat.d().format(DateTime.now()),
            DateFormat.yMMMMEEEEd().format(DateTime.now()),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}