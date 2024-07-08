
import "package:flutter/material.dart";
import "package:myapp/models/shoe.dart";

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // image
          Image.asset(shoe.imagePath),

          // title
        ],
      ),
    );
  }
}