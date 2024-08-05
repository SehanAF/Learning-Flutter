import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/models/shopepay_project/PaymentButton.dart';
import 'package:myapp/models/shopepay_project/other_paymen_models.dart';


class OtherPaymentApp extends StatelessWidget {
  const OtherPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 400,
        height: 260,
        decoration: BoxDecoration(
          color: Color.fromARGB(237, 197, 197, 197),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.50),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: EdgeInsets.only(top: 310),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OtherPaymenAppModels(
                        icon: Icons.account_balance_wallet,
                        label: "Cashback\n200RB",
                        onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.qr_code, label: "Pulsa &\n Tagihan", onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.send, label: "Promo\nSPayLater", onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.account_balance,
                        label: "Pulsa",
                        onTap: () {}),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OtherPaymenAppModels(
                        icon: Icons.account_balance_wallet,
                        label: "ShopeeFood",
                        onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.qr_code, label: "Virtual\nAccount", onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.send, label: "Google Play", onTap: () {}),
                    OtherPaymenAppModels(
                        icon: Icons.account_balance,
                        label: "Lihat Semua",
                        onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
