// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/shopepay_)project/profile_screen.dart';
import 'package:myapp/screens/shopepay_)project/spaylater_screen.dart';
import 'package:myapp/screens/shopepay_)project/spinjam_screen.dart';

import 'package:myapp/widgets/shopepay_project/balance_info.dart';
import 'package:myapp/widgets/shopepay_project/balance_widget.dart';
import 'package:myapp/widgets/shopepay_project/information_widget.dart';
import 'package:myapp/widgets/shopepay_project/navbar_bottom.dart';
import 'package:myapp/widgets/shopepay_project/notification_icon.dart';
import 'package:myapp/widgets/shopepay_project/other_payment_app.dart';
import 'package:myapp/widgets/shopepay_project/shopeepay_headers.dart';
import 'package:myapp/widgets/shopepay_project/transaction_actions.dart';

class HomeScreenShopepay extends StatefulWidget {
  const HomeScreenShopepay({super.key});

  @override
  State<HomeScreenShopepay> createState() => _HomeScreenShopepayState();
}

class _HomeScreenShopepayState extends State<HomeScreenShopepay> {
  final List<Widget> _pages = [
    HomeContent(), // Halaman Beranda yang sudah didefinisikan
    SpinjamScreen(), // Halaman Finance
    // Container(), // Placeholder untuk posisi tombol QRIS (biarkan kosong)// Halaman Riwayat
    //ProfileScreen(), // Halaman Profile
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: _pages[_selectedIndex], // Tampilkan halaman sesuai index
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipOval(
            child: Material(
              color: Color.fromARGB(255, 240, 86, 25),
              elevation: 10,
              child: InkWell(
                child: Container(
                  width: 66,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 86, 25),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.qr_code,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Text("QRIS"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// Widget HomeContent yang memuat isi dari HomeScreen sebelumnya
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: 400,
            height: 240,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 86, 25),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 70),
                        ShopeePayHeader(),
                        Spacer(),
                        BalanceWidget(),
                        SizedBox(width: 10),
                        NotificationIcon(),
                      ],
                    ),
                    BalanceInfo()
                  ],
                )),
          ),
          TransactionActions(),
          OtherPaymentApp(),
          SizedBox(
            height: 40,
          ),
          InformationWidget(),
        ],
      ),
    );
  }
}
