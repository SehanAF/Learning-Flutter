// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/detail_book.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/home_book.dart';
import 'package:myapp/pages/latihan/Profile%20&%20Berita/edit_password.dart';
import 'package:myapp/pages/latihan/Profile%20&%20Berita/edit_profile.dart';
import 'package:myapp/pages/latihan/Profile%20&%20Berita/home_profile.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/berita.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/home_page.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/rangking.dart';


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
      home: DetailBook(),
    );
  }
}
