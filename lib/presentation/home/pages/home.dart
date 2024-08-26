// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/common/helpers/is_dark_mode.dart';

import 'package:myapp/common/widgets/appbar/app_bar.dart';
import 'package:myapp/core/configs/assets/app_images.dart';
import 'package:myapp/core/configs/assets/app_vectors.dart';
import 'package:myapp/core/configs/theme/app_colors.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
     _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _homeArtistCard(context),
              SizedBox(height: 20),
              _tabs()
            ],
          ),
        ),
      )
    );
  }

  Widget _homeArtistCard(BuildContext context){
    return Center(
      child: SizedBox(
        height: 110,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                AppVectors.HomeTopCard
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Image.asset(
                  AppImages.imageHomeBillie,
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
  
Widget _tabs() {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.transparent, width: 0), // Menghilangkan garis bawah default
      ),
    ),
    child: TabBar(
      controller: _tabController, // Pastikan controller sudah diinisialisasi
      isScrollable: true, // Mengatur apakah TabBar bisa digeser
      labelColor: AppColors.primary, // Warna label saat tab dipilih
      unselectedLabelColor: Colors.grey, // Warna label saat tab tidak dipilih
      indicator: UnderlineTabIndicator( // Hanya menampilkan garis pada tab yang dipilih
        borderSide: BorderSide(color: AppColors.primary, width: 4.0),
        insets: EdgeInsets.symmetric(horizontal: 50.0), // Menyesuaikan panjang garis dengan teks
      ),
      indicatorSize: TabBarIndicatorSize.label, // Ukuran indikator mengikuti panjang label
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16, // Ukuran teks lebih besar
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14, // Ukuran teks lebih kecil untuk yang tidak dipilih
      ),
      tabs: const [
        Tab(text: "News"),
        Tab(text: "Videos"),
        Tab(text: "Artists"),
        Tab(text: "Podcast"),
      ],
    ),
  );
}





















}