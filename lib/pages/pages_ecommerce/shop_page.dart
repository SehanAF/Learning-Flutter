// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:hive/hive.dart";
import "package:myapp/components/shoe_tile.dart";
import "package:myapp/models/shoe.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Container(
          padding: EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),


        // Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "everyone flies... some fly longer than others",
            style: TextStyle(
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      
        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              const SizedBox(width: 10),
              Text(
                "Hot Picks",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(name: "Oxford Natural", price: '150', imagePath: 'images/shoe1.png', description: "Cool shoe");
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
      ],
    );
  }
}