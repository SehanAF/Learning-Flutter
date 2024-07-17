// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.orangeAccent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150.0),
                      bottomRight: Radius.circular(150.0),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 60.0),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Dokumentasikan\nproses anak bersama\nKeluarga",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Image.asset(
                      "images/onboarding.png",
                      height: 250,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum hexajor nesm, nativ, att labavis bes.\n"
                "Kroskapet diav, sedan fos. Du kan vara drabbad.\n"
                "Essa paseledes i kuvn i krongar.\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
            
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              onPressed: () {},
              child: Icon(Icons.arrow_forward, color: Colors.white),
              backgroundColor: Colors.black,
            ),
            
          ],
        ),
      ),
    );
  }
}
