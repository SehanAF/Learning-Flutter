// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/latihan/Forum%20Diskusi/forum_diskusi.dart';
import 'package:myapp/pages/latihan/Login%20&%20Register/login_page.dart';
import 'package:myapp/pages/latihan/Login%20&%20Register/onboarding_page.dart';
import 'package:myapp/pages/latihan/Login%20&%20Register/register_page.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/detail_book.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/home_book.dart';
import 'package:myapp/pages/latihan/Pinjam%20Buku/list_book.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/edit_password.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/edit_profile.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/home_berita.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/home_profile.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/ranking.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/home_page.dart';
import 'package:myapp/pages/pages_recipebook/login_page.dart';


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
      home: RankingPage(),
      //initialRoute: "/onboarding",
      routes: {
        // onboarding
        "/onboarding": (context) => OnboardingPage(),

        // section login
        "/loginpage": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),

        '/homepage': (context) => HomePageAyah(),
       
        // section profile
        '/editprofile': (context) => EditProfile(),
        '/editpassword': (context) => EditPassword(),
        
        // section bottom navbar
        '/home': (context) => HomePageAyah(),
        '/berita': (context) => HomeBeritaPage(),
        '/buku': (context) => HomeBook(),
        '/forum': (context) => ForumDiskusi(),
        '/profile': (context) => HomeProfile(),

        // section book
        '/homebook': (context) => HomeBook(),
        '/detailbook': (context) => DetailBook(),
        '/listbook': (context) => ListBook(),
      },
    );
  }
}
