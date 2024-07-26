// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PengumumanPage extends StatelessWidget {
  const PengumumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "images/ngaji.jpeg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.orange),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 10,
                    child: Text(
                      "Kegiatan mengaji bersama di Kuttab Alfatih",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ), 
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: RichText(
                      text: TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: '1 Januari 2024',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(width: 20)
                          ),
                          TextSpan(
                            text: '1 jam yang lalu',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Bagi banyak individu, menghafal Al-Quran adalah tantangan yang berharga untuk mendalami pemahaman dan kecintaan terhadap kitab suci. Di tengah arus perubahan dunia yang cepat dan distraksi yang melimpah, mencari metode dan strategi yang efektif adalah langkah penting dalam perjalanan tahfidz Al-Quran. Berikut adalah beberapa tips yang dapat membantu Anda dalam menghafal Al-Quran dengan lebih efektif:',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                      backgroundColor: Colors.orange,
                    ),
                    child: Text(
                      "Redirect Link",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}