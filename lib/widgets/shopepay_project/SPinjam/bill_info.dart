// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class buildBillInfo extends StatelessWidget {
  const buildBillInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.description_outlined, color: Colors.yellow, size: 30),
                  SizedBox(width: 10,),
                  Text("SPinjam Belum Lunas", style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jumlah Pinjaman: Rp1.000", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                      Text("Rp219.644 jatuh tempo tanggal 28\nsetiap bulan", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),)
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      print("button detail ditekan");
                    },
                    child: Row(
                      children: [
                        Text("3/6 Lunas", style: TextStyle(color: Colors.grey, fontSize: 16),),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15,)
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        )
      ],
    );
  }
}
