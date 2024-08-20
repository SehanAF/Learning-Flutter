// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InformationUpdate extends StatelessWidget {
  const InformationUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromARGB(136, 216, 255, 252),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.lightbulb_sharp,
                    color: Color.fromARGB(255, 65, 146, 126),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Informasi Pemeliharaan Sistem",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 153, 128), fontSize: 16),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                child: Text(
                  "SPinjam tidak akan tersedia pada 12 Agustus pk. 01:00 - 03:00 WIB. Segera ajukan atau lunasi tagihanmu untuk transaksi lebih cepat.",
                  style: TextStyle(
                    color: const Color.fromARGB(144, 0, 0, 0),
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}