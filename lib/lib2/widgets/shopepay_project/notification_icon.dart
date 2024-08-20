// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print("button ditekan");
      },
      icon: Icon(
        Icons.notifications,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
