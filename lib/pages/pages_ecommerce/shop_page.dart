// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
// import "package:hive/hive.dart";
import "package:myapp/components/shoe_tile.dart";
import "package:myapp/models/cart.dart";
import "package:myapp/models/shoe.dart";
import "package:provider/provider.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    
    // alert the use, shoe succesfully added
    showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Item Added to Cart"),
      content: Text("You have successfully added this item to the cart."),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("OK"),
        ),
      ]
    ),
  );
} 

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                const SizedBox(width: 5),
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
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoesList()[index];

                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe)
                );
              },
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
          //   child: Divider(
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }
}
