// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ConfirmBook extends StatelessWidget {
  const ConfirmBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.orange,
                size: 15,
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text('Detail Buku',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "images/IconYes.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Pinjam Buku Berhasil",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ambil Buku Pinjaman Ke Kutab Alfatih Cibadak",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20,),
            Container(
              height: 320,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow("Dari", "Kutab Alfatih"),
                  SizedBox(height: 10,),
                  _buildRow("Ke", "Majmudin Suhadin"),
                  SizedBox(height: 10,),
                  _buildRow("Id Pinjaman", "#01062445"),
                  SizedBox(height: 10,),
                  _buildRow("Tanggal", "4 Jul 2024 | 01.05 am"),
                  
                  Divider(
                    color: Colors.grey,
                    height: 30,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  _buildRow("Alamat", "Nagrak Tonggoh,\nKec. Nagrak, Kab. Sukabumi"),
                  SizedBox(height: 10,),
                  _buildRow("Judul Buku", "Mudah Mudahan Jadi Lebih Baik"),
                ],              
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                  child: Text(
                    "Kembali Kedashboard",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 5.0),
      child: Row(      
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [     
          SizedBox(
            width: 180,
            child: Text(              
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.end,
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
}
