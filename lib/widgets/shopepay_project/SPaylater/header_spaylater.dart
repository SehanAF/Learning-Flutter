// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderSpaylater extends StatelessWidget {
  const HeaderSpaylater({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            print("button ditekan");
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 25,
          ),
        ),
        SizedBox(width: 10,),
        Text("SPaylater", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.description, color: Colors.white,size: 20,),
        SizedBox(width: 20,),
        Icon(Icons.help_outline, color: Colors.white, size: 30,),
        SizedBox(width: 20,),
        Icon(Icons.settings, color: Colors.white,size: 25,),    
      ],
    );
  }
}