// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavBarItem(CupertinoIcons.home, 'Beranda', 0),
          buildNavBarItem(Icons.account_balance_wallet, 'Finance', 1),
          const SizedBox(width: 30),
          buildNavBarItem(Icons.receipt_long, 'Riwayat', 3),
          buildNavBarItem(CupertinoIcons.person, 'Profile', 4),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selectedIndex == index
                ? const Color.fromARGB(255, 240, 86, 25)
                : Colors.black87,
          ),
          Text(
            label,
            style: TextStyle(
              color: selectedIndex == index
                  ? const Color.fromARGB(255, 240, 86, 25)
                  : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
