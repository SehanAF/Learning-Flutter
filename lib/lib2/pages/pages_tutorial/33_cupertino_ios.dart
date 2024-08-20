import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CupertinoPage extends StatelessWidget {
  const CupertinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyAppBar = AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(
        "Layout Builder",
        style: TextStyle(color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: MyAppBar,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Platform.isIOS ? CupertinoAlertDialog(
                  title: Text("Delete Item"),
                  content:
                    Text("Are you sure you want to delete this item?"),
                  actions: [
                    TextButton(onPressed: () {}, child: Text("No")),
                    TextButton(onPressed: () {}, child: Text("Yes"))
                  ]
                ) : AlertDialog(
                  title: Text("Delete Item"),
                  content:
                    Text("Are you sure you want to delete this item?"),
                  actions: [
                    TextButton(onPressed: () {}, child: Text("No")),
                    TextButton(onPressed: () {}, child: Text("Yes"))
                  ]
                );
              }
            );
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
