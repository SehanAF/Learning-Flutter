import 'package:flutter/material.dart';

class PaymentActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback OnTap;

  PaymentActionButton(
      {required this.icon,
      required this.label,
      required this.OnTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: OnTap,
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Color.fromARGB(255, 221, 75, 56)),
              SizedBox(height: 5),
              Text(label,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
