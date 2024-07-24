// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListBook extends StatelessWidget {
  const ListBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 10, 
            height: 10, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back, color: Colors.orange,
                size: 15,             
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text('List Buku Pinjaman', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/book2.png",
                  width: 50,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Buku Cerita Anak",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                        ),
                        
                        Text(
                          "Mudah Mudahan Jadi Lebih\nBaik",
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 28,),
                    Container(
                      width: 80,
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                          "Pendding",
                            style: TextStyle(
                            fontSize: 12, color: Colors.orange[600]),
                          ),
                        ],
                      )
                    ),
                  ],
                ),        
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Tidak Jadi",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14, color: Colors.red),
                      ),
                    ],
                  )
                ),
                SizedBox(width: 15,),
                Container(
                  width: 120,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 204, 60),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah diambil",
                        style: TextStyle(
                        fontSize: 14, color: Colors.white),
                      ),
                    ],
                  )
                ),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),   
            SizedBox(height: 5,),     
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/book1.png",
                  width: 50,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Buku Cerita Anak",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                        ),
                        
                        Text(
                          "Menyelamatkan Planet Biru",
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 28,),
                    Container(
                      width: 80,
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                          "Approve",
                            style: TextStyle(
                            fontSize: 12, color: Colors.green[600]),
                          ),
                        ],
                      )
                    ),
                  ],
                ),        
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [               
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text(                                    
                      "Tanggal Kembali:",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("22/04/2024"),
                  ],
                ),              
                Container(
                  width: 170,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah dikembalikan",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14, color: Colors.white),
                      ),
                    ],
                  )
                ),          
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),   
            SizedBox(height: 5,),     
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/book1.png",
                  width: 50,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Buku Cerita Anak",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                        ),
                        
                        Text(
                          "Menyelamatkan Planet Biru",
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 100,
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                          "Dikembalikan",
                            style: TextStyle(
                            fontSize: 12, color: Colors.green[600]),
                          ),
                        ],
                      )
                    ),
                  ],
                ),        
              ],
            ),
          ],
        ),
      ),
    );
  }
}