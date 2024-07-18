import 'package:flutter/material.dart';
import 'package:myapp/pages/latihan/Login%20&%20Register/daftar_profile.dart';
import 'package:myapp/pages/latihan/Login%20&%20Register/login_page.dart';
import 'package:myapp/pages/latihan/Verifikasi%20&%20Home/kode_verifikasi.dart';
import 'package:myapp/pages/latihan/Verifikasi%20&%20Home/terverifikasi.dart';
import 'package:myapp/pages/latihan/Verifikasi%20&%20Home/verifikasi.dart';

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
      home: Terverifikasi(),
    );
  }
}
