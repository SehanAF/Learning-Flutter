// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/widgets/shopepay_project/notification_icon.dart';

class InformationUrgent extends StatelessWidget {
  const InformationUrgent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 223, 218, 198),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 185, 167, 0),
                    shape: BoxShape.circle,
                  ),
                ),
                Icon(Icons.notifications, color: Colors.white),               
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text.rich(
                  TextSpan(
                    text: 'Kamu memiliki tagihan yang akan datang\n',
                    style: TextStyle(fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'dengan rincian di bawah ini. Pastikan kamu\n',
                      ),
                      TextSpan(
                        text: 'membayar tagihan tepat waktu & tingkatkan\n',
                      ),
                      TextSpan(
                        text: 'pembelianmu di Shopee!',
                      ),
                    ],
                  ),
                  maxLines: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
