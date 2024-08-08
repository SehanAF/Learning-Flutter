// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/widgets/shopepay_project/SPaylater/header_spaylater.dart';

class SpinjamScreen extends StatelessWidget {
  const SpinjamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 224, 224),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
                  child: Column(
                    children: [
                      _buildHeaders(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildInformationKredit(),
                      Container(
                        child: _buildInformationUpdate(),
                        margin: EdgeInsets.only(top: 160),
                      )
                    ],
                  ),
                ),
                Container(
                  child: _buildInformationBillNow(),
                  margin: EdgeInsets.only(top: 300),
                ),
              ],
            ),
            _buildBillInfo(),
            SizedBox(
              height: 80,
            ),
            Text("data")
          ],
        ),
      ),
    );
  }

  Widget _buildBillInfo() {
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

  Widget _buildInformationUpdate() {
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

  Widget _buildInformationBillNow() {
    return ClipPath(
      clipper: WaveClipperTop(),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromARGB(234, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 45),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Tagihan Saat Ini",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.help_outline,
                      size: 18,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.article_outlined,
                      color: Colors.yellow,
                      size: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Kamu tidak memiliki tagihan dalam\n10 hari ke depan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInformationKredit() {
    return ClipPath(
      clipper: WaveClipperBottom(),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 86, 25),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Limit Kredit Tersedia",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp942.193",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Total Limit Kredit Rp1.500.000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("button Ajukan ditekan");
                    },
                    child: Text(
                      "Ajukan",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                      foregroundColor: Colors.redAccent,
                      backgroundColor: Colors.transparent,
                      side:
                          BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Kuota pinjaman kamu telah habis",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("button help ditekan");
                        },
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white,
                          size: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeaders() {
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

class WaveClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    var firstControlPoint = Offset(size.width / 2, 50);
    var firstEndPoint = Offset(size.width, 0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
