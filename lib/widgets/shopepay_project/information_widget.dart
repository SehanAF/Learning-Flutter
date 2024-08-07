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
          height: 180,
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
                GestureDetector(
                  onTap: () {
                    print("button ditekan");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.money_off,
                        color: Color.fromARGB(255, 221, 75, 56),
                        size: 35,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "SPinjam",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Dibekukan",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 2,
                  endIndent: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Akunmu dibekukan karena alasan keamanan.",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 88, 88, 88),
                      fontSize: 15),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 350,
                      height: 30,
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 0, 102, 255).withOpacity(0.13),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: FittedBox(
                          child: Center(
                            child: Text(
                              "Pinjaman tunai s/d 50JT, bunga rendah mulai 1.95%",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 71, 179).withOpacity(0.5),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
