// ignore_for_file: prefer_const_constructors, avoid_print

import "package:flutter/material.dart";

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();

  // greeting messege var
  String greetingMessege = "";

  void greetUser() {
    String userName = myController.text;
  
    setState(() {
      greetingMessege = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Greet user messege
            Text(greetingMessege),

            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name..",
              ),
            ),

            ElevatedButton(
              onPressed: greetUser, 
              child: Text("Tap"),
            ),
          ],
        ),
      ),
    );
  }
}