// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InformationCredits extends StatelessWidget {
  const InformationCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Kredit Tersedia",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rp ", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Text("547.814", style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          GestureDetector(
            onTap: () {
              print("button ditekan");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Jumlah Kredit 1.580.000", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
