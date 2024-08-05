// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          width: 400,
          height: 160,
          decoration: BoxDecoration(
            color: Color.fromARGB(237, 197, 197, 197),
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.only(top: 590),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SPinjam"),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 2,
                  endIndent: 2,
                ),
                Text("Akunmu dibekukan karena alasan keamanan."),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
