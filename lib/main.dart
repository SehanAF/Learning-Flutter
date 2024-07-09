// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/pages_recipebook/login_page.dart';
import 'package:myapp/pages/tutorial/stateful_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatefulPage()
    );
  }
}