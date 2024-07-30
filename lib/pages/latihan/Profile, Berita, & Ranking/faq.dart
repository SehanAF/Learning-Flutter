// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange,),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("FAQ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),       
            ),        
            SizedBox(height: 5,),
            Text(
              "Ada yang bisa kami bantu?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),       
            ),             
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pertanyaan yang Sering Diajukan",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black
              ),
            ),
            SizedBox(height: 10,
            ),
            Container(
              width: 400,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),

            )
          ],
        ),
      ),
    );
  }
}