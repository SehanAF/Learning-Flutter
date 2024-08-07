// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/widgets/shopepay_project/SPaylater/header_spaylater.dart';
import 'package:myapp/widgets/shopepay_project/SPaylater/information_credits.dart';
import 'package:myapp/widgets/shopepay_project/SPaylater/information_urgent.dart';
import 'package:myapp/widgets/shopepay_project/SPaylater/transaction_spaylater.dart';
import 'package:myapp/widgets/shopepay_project/transaction_actions.dart';

class SPaylaterScreen extends StatelessWidget {
  const SPaylaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 340,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 86, 25),
                borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),

            child: Column(
              children: [
                HeaderSpaylater(),
                SizedBox(height: 10,),
                InformationUrgent(),
                SizedBox(height: 10,),
                InformationCredits(),
              ],
            ),            
          ),
          TransactionSpaylater()
        ],
      ),
    );
  }
}
