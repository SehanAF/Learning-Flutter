
// Import the Flutter material library for UI elements.
import 'package:flutter/material.dart';

// Entry point dari aplikasi Flutter.
void main() {
  runApp(const MyApp());
}

// List View
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Memindahkan deklarasi myList ke dalam build method MyApp.
    // Harus 1 Scope
    List<Widget> myList = [
      Container(
        height: 300,
        width: 300,
        color: Colors.red,
      ),
      Container(
        height: 300,
        width: 300,
        color: Colors.green,
      ),
      Container(
        height: 300,
        width: 300,
        color: Colors.blue,
      ),
      Container(
        height: 300,
        width: 300,
        color: Colors.amber,
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView( // agar bisa di scroll
          // scrollDirection: Axis.horizontal, // mengubah posisi scroll
          children: myList,
        ),
      ),
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
