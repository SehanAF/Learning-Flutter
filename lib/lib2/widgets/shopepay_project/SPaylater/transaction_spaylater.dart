// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class TransactionSpaylater extends StatelessWidget {
  const TransactionSpaylater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        margin: const EdgeInsets.only(top: 290),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBillInfo(),
                  const Spacer(), // Spacer pertama
                  _buildPayButton(),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Column(
                children: [_MoreTransaction()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBillInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Tagihan Berikutnya ",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              "Rp215.344",
              style: TextStyle(
                  color: Color.fromARGB(255, 240, 86, 25), fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Text(
          "Jatuh Tempo 25 Agt 2024",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildPayButton() {
    return Align(
      alignment: Alignment.topCenter,
      child: ElevatedButton(
        onPressed: () {
          print("Tombol ini ditekan.");
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
          foregroundColor: Colors.redAccent,
          backgroundColor: Colors.white,
          side: const BorderSide(color: Color.fromARGB(255, 240, 86, 25)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: const Text(
          'Bayar Lebih Awal',
          style: TextStyle(
            color: Color.fromARGB(255, 240, 86, 25),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

    Widget _MoreTransaction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // Aksi ketika "Tagihan Saya" ditekan
            print("Tagihan Saya ditekan");
          },
          child: Row(
            children: [
              Icon(
                Icons.receipt,
                color: Color.fromARGB(255, 240, 86, 25),
              ),
              SizedBox(width: 5),
              Text(
                "Tagihan Saya",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios,
                size: 10,
                color: Color.fromARGB(255, 240, 86, 25),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // Aksi ketika "Transaksi" ditekan
            print("Transaksi ditekan");
          },
          child: Row(
            children: [
              Icon(
                Icons.swap_horizontal_circle,
                color: Color.fromARGB(255, 240, 86, 25),
              ),
              SizedBox(width: 5),
              Text(
                "Transaksi",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios,
                size: 10,
                color: Color.fromARGB(255, 240, 86, 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
