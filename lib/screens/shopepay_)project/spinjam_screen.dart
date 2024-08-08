// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/widgets/shopepay_project/SPinjam/Information_bill_now.dart';
import 'package:myapp/widgets/shopepay_project/SPinjam/bill_info.dart';
import 'package:myapp/widgets/shopepay_project/SPinjam/headers_spinjam.dart';
import 'package:myapp/widgets/shopepay_project/SPinjam/information_credit.dart';
import 'package:myapp/widgets/shopepay_project/SPinjam/information_update.dart';

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
                      HeadersSpinjam(),
                      SizedBox(
                        height: 20,
                      ),
                      InformationCredit(),
                      Container(
                        child: InformationUpdate(),
                        margin: EdgeInsets.only(top: 160),
                      )
                    ],
                  ),
                ),
                Container(
                  child: InformationBillNow(),
                  margin: EdgeInsets.only(top: 300),
                ),
              ],
            ),
            buildBillInfo(),
            SizedBox(
              height: 80,
            ),
            Text("data")
          ],
        ),
      ),
    );
  }
}