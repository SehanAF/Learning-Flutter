// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Terverifikasi extends StatelessWidget {
  const Terverifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Masukkan Kode",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Kode verifikasi telah dikirimkan melalui\n email Anda, Mohon periksa email Anda.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCodeBox(),
                  _buildCodeBox(),
                  _buildCodeBox(),
                  _buildCodeBox(),
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Tidak mendapatkan kode? ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'Kirim ulang',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  backgroundColor: Colors.orange,
                ),
                child: Text(
                  "Verifikasi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 135),
                  padding: EdgeInsets.all(47),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ]
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Image.asset(
                          "images/ceklis.png", // Ganti dengan path gambar ceklis
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Akun terverifikasi",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Akun Anda telah berhasil diverifikasi, \n Nikmati akses penuh ke semua fitur kami.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeBox() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          '',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}