// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Verifikasi extends StatelessWidget {
  const Verifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Verifikasi Akun",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset("images/Messenger.png"),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Kami akan mengirim kode verifikasi\n melalui email anda",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey
            ),
          ),
          SizedBox(height: 40),
          Text(
            "hello@loremipsum.com",
          ),
          SizedBox(height: 40),
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
              "Kirim Kode",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}