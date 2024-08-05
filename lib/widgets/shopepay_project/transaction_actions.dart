// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/models/shopepay_project/PaymentButton.dart';

class TransactionActions extends StatelessWidget {
  const TransactionActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 400,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
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
        margin: EdgeInsets.only(top: 175),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PaymentActionButton(
                  icon: Icons.account_balance_wallet,
                  label: "Isi Saldo",
                  OnTap: () {}),
              PaymentActionButton(
                  icon: Icons.qr_code, label: "Kode Bayar", OnTap: () {}),
              PaymentActionButton(
                  icon: Icons.send, label: "Transfer", OnTap: () {}),
              PaymentActionButton(
                  icon: Icons.account_balance,
                  label: "Transfer Bank",
                  OnTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
