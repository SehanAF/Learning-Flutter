// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DaftarProfile extends StatelessWidget {
  const DaftarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30), 
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Image.asset("images/logo_ayah.png"),
              ),
            ),
            SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile Anda',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mohon isi data dengan teliti dan benar',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 232, 232, 232),
                  //border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Stack(              
                  children: <Widget>[
                    CircleAvatar(                    
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          "images/profile.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),                      
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_enhance,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Istri"),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukan Nama Istri',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Nama Anak Masuk Kuttab"),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Nama Anak',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Tahun Anak Masuk Kuttab"),
                  SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "dd/mm/yyyy",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      suffixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),                      
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Deskripsi"),
                  SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Deskrisikan diri anda",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                        backgroundColor: Colors.orange,
                      ),
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ),
                  SizedBox(height: 60),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}