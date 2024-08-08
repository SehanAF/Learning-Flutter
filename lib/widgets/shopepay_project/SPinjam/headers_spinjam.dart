// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class HeadersSpinjam extends StatelessWidget {
  const HeadersSpinjam({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            print("button kembali ditekan");
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 0, 0, 0),
            size: 25,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "SPinjam",
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0), fontSize: 22),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            print("button help ditekan");
          },
          child: Icon(
            Icons.access_time_outlined,
            color: const Color.fromARGB(255, 0, 0, 0),
            size: 30,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            print("button person ditekan");
          },
          child: Icon(
            Icons.person_3_outlined,
            color: const Color.fromARGB(255, 0, 0, 0),
            size: 32,
          ),
        ),
      ],
    );
  }
}