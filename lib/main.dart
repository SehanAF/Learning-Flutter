
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/pages/test_page.dart';

void main() {
  runApp(MyApp());
}

// Section Navigation - Bottom Navbar
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPage(),
    );
  }
}



// latihan menggunakan Container, column and stack

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Column"),
//         ),
//         body: Stack(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           //crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               height: 400,
//               width: 400,
//               color: Colors.green,
//             ),
//              Container(
//               height: 300,
//               width: 300,
//               color: Colors.blue,
//             ),
//              Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//              Container(
//               height: 100,
//               width: 100,
//               color: Colors.orange,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Very Basic

// Use 'stl' shortcut for StatelessWidget

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("My First App"),
//         ),
//         body: const Center(
//           child: Text(
//             "Hello World",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue,
//               fontFamily: "Arial",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
