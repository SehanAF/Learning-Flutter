
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.orangeAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(140.90),
                    bottomRight: Radius.circular(140.90),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dokumentasikan\nproses anak bersama\nKeluarga",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'images/logo1.png', // Sesuaikan dengan path gambar Anda
                      height: 150,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Lorem ipsum hexajor nesm, nativ, att labavis bes. "
                  "Kroskapet diav, sedan fos. Du kan vara drabbad. "
                  "Essa paseledes i kuvn i krongar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  // Tambahkan aksi yang diinginkan
                },
                child: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 20),
            ],
          ),
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
