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
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/faq.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/home_berita.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/home_profile.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/ranking.dart';
import 'package:myapp/pages/latihan/Profile,%20Berita,%20&%20Ranking/test0.dart';
import 'package:myapp/pages/latihan/Story%20kegiatan/galery_kegiatan.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/home_page.dart';
import 'package:myapp/pages/pages_recipebook/login_page.dart';
import 'package:myapp/pages/pages_tutorial/30_flexible_and_expanded.dart';
import 'package:myapp/pages/pages_tutorial/model_blueprint.dart';
import 'package:myapp/pages/pages_tutorial/mediaquery.dart';
import 'package:myapp/pages/pages_tutorial/switch_button.dart';
import 'package:myapp/pages/pages_tutorial/theme.dart';
import 'package:myapp/pages/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity.standard,
        // primarySwatch: Colors.orange,
        // primaryColor: Colors.amber,
        
        
      ),
      home: FlexibleAndExpanded(),
      //initialRoute: "/onboarding",
      routes: {
        // onboarding
        OnboardingPage.nameRoute: (context) => OnboardingPage(),

        // section login
        LoginPage.nameRoute: (context) => LoginPage(),
        RegisterPage.nameRoute: (context) => RegisterPage(),

        HomePageAyah.nameRoute: (context) => HomePageAyah(),
       
        // section profile
        HomeProfile.nameRoute: (context) => HomeProfile(),
        EditProfile.nameRoute: (context) => EditProfile(),
        EditPassword.nameRoute: (context) => EditPassword(),
        RankingPage.nameRoute: (context) => RankingPage(),
        
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
