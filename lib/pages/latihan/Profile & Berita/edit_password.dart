// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EditPassword extends StatelessWidget {
  const EditPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 20, 
            height: 20, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back, color: Colors.orange,
                size: 20,    
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text(
          'Edit Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35, 
              height: 35, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.close, 
                    color: Colors.black,
                    size: 20, 
                  ),
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                ),
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Kata Sandi Lama"),
            SizedBox(height: 5),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukkan Kata Sandi",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),                     
              ),
            ),
            SizedBox(height: 10),
            Text("Kata Sandi Baru"),
            SizedBox(height: 5),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukkan Kata Sandi",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),                     
              ),
            ),
            SizedBox(height: 10),
            Text("Ulangi Kata Sandi"),
            SizedBox(height: 5),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukkan Kata Sandi",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),                     
              ),
            ),
            SizedBox(height: 200),
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
                    "Save",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ),
          ],
        ),      
      ),
    );
  }
}