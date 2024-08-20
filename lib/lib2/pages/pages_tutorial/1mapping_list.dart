// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// MappingList adalah StatelessWidget, yang berarti widget ini tidak memiliki state yang berubah.
class MappingList extends StatelessWidget {
  // Konstruktor untuk MappingList.
  MappingList({super.key});

  // Deklarasi list myList yang berisi data berupa Map.
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Sehun",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black"]
    },
    {
      "name": "Alexa",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black"]
    },
    {
      "name": "Givi",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black"]
    },
    {
      "name": "Sehun",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black"]
    },
  ];

  // Metode build untuk membangun tampilan UI.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"), // Judul AppBar.
          centerTitle: true, // Judul di tengah.
        ),
        // ListView untuk menampilkan daftar item dari myList.
        body: ListView(
          // Memetakan setiap elemen di myList ke dalam widget Card.
          children: myList.map((data) {
            // Mengambil list warna favorit dari data.
            List myfavcolor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(10), // Margin di sekitar Card.
              elevation: 10, // Elevasi untuk memberikan efek bayangan.
              // Container untuk menampilkan detail dari data.
              child: Container(
                margin: EdgeInsets.all(10), // Margin di dalam Container.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Posisi anak-anak widget di mulai dari kiri.
                  children: [
                    // Baris pertama untuk menampilkan avatar dan detail nama, usia, gender.
                    Row(
                      children: [
                        CircleAvatar(), // Avatar lingkaran.
                        SizedBox(
                          width: 20, // Spasi horizontal antara avatar dan teks.
                        ),
                        // Kolom untuk menampilkan detail nama, usia, dan gender.
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Posisi teks di mulai dari kiri.
                          children: [
                            Text("Name: ${data["name"]}"), // Teks untuk nama.
                            Text("Age: ${data["age"]}"), // Teks untuk usia.
                            Text("Gender: ${data["gender"]}"), // Teks untuk gender.
                          ],
                        ),
                      ],
                    ),
                    // SingleChildScrollView untuk menggulung warna favorit secara horizontal.
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal, // Gulir secara horizontal.
                      // Baris untuk menampilkan warna favorit.
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Posisi anak-anak widget di mulai dari kiri.
                        children: myfavcolor.map((color) {
                          // Kontainer untuk setiap warna favorit.
                          return Container(
                            color: Colors.amberAccent, // Warna latar belakang kontainer.
                            margin: EdgeInsets.symmetric(
                              vertical: 15, // Margin vertikal.
                              horizontal: 8, // Margin horizontal.
                            ),
                            padding: EdgeInsets.all(10), // Padding di dalam kontainer.
                            child: Text(color), // Teks untuk warna.
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
