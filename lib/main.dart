import 'package:flutter/material.dart';
import 'package:myapp/pages/latihan/login_page.dart';
import 'package:myapp/pages/latihan/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: LoginPage(),
    );
  }
}
