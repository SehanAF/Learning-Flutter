// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/widgets/shopepay_project/balance_info.dart';
import 'package:myapp/widgets/shopepay_project/balance_widget.dart';
import 'package:myapp/widgets/shopepay_project/information_widget.dart';
import 'package:myapp/widgets/shopepay_project/notification_icon.dart';
import 'package:myapp/widgets/shopepay_project/other_payment_app.dart';
import 'package:myapp/widgets/shopepay_project/shopeepay_headers.dart';
import 'package:myapp/widgets/shopepay_project/transaction_actions.dart';

class HomeScreenShopepay extends StatelessWidget {
  const HomeScreenShopepay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 240,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 86, 25),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 70),
                          ShopeePayHeader(),
                          Spacer(),
                          BalanceWidget(),
                          SizedBox(width: 10),
                          NotificationIcon(),
                        ],
                      ),
                      BalanceInfo()
                    ],
                  )),
            ),
            TransactionActions(),
            OtherPaymentApp(),
            SizedBox(
              height: 40,
            ),
            InformationWidget()
          ],
        ),
      ),
    );
  }
}
