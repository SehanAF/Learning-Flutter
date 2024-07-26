// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/latihan/Forum%20Diskusi/edit_profile_diskusi.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/detail_book.dart';


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
      home: EditProfileDiskusi(),
    );
  }
}
