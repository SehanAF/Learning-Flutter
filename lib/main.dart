
// Import the Flutter material library for UI elements.
import 'package:flutter/material.dart';

// Entry point dari aplikasi Flutter.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// belajar menggunakan icon

  @override
 // Override metode build untuk membuat UI
  Widget build(BuildContext context) {
    // Membuat aplikasi MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan banner mode debug
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200], // Mengatur warna latar belakang Scaffold
        appBar: AppBar(
          title: Text("My First App", style: TextStyle(color: Colors.white)), // Menambahkan judul AppBar dengan warna teks putih
          backgroundColor: Colors.deepPurple, // Mengatur warna latar belakang AppBar
          elevation: 0, // Menghilangkan bayangan di bawah AppBar
          leading: Icon(Icons.menu, color: Colors.white), // Menambahkan ikon menu di sisi kiri AppBar dengan warna putih
          actions: [
            IconButton(
              onPressed: () {}, // Fungsi yang dipanggil ketika tombol ditekan (saat ini tidak melakukan apa-apa)
              icon: Icon(Icons.logout, color: Colors.white) // Menambahkan ikon logout di sisi kanan AppBar dengan warna putih
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 300, // Tinggi kontainer
            width: 300, // Lebar kontainer
            decoration: BoxDecoration(
              color: Colors.deepPurple, // Warna latar belakang kontainer
              borderRadius: BorderRadius.circular(20), // Membuat sudut kontainer melengkung
            ),
            padding: EdgeInsets.all(25), // Memberikan padding di dalam kontainer
            child: Icon(
              Icons.android, // Menambahkan ikon Android di dalam kontainer
              size: 100, // Ukuran ikon
              color: Colors.white, // Warna ikon
            ),
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
