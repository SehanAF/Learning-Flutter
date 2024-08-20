import 'package:flutter/material.dart';

class OtherPaymenAppModels extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  OtherPaymenAppModels({
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey, // Warna garis tepi
                      width: 1, // Ketebalan garis tepi
                    ),
                  ),
                  child: Icon(
                    icon,
                    size: 40,
                    color: Color.fromARGB(255, 221, 75, 56),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
