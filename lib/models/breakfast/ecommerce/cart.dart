

import 'package:flutter/material.dart';
import 'package:myapp/models/breakfast/ecommerce/shoe.dart';

class Cart extends ChangeNotifier{
  // Daftar sepatu yang dijual
  List<Shoe> shoesShop = [
    Shoe(
      name: "Zoom Freak",
      price: "120.0",
      imagePath: "images/sepatu1.png",
      description: "Sepatu basket dengan teknologi terbaru.",
    ),
    Shoe(
      name: "Air Max 270",
      price: "150.0",
      imagePath: "images/sepatu2.png",
      description: "Sepatu kasual dengan bantalan udara maksimal.",
    ),
    Shoe(
      name: "Adidas Ultra",
      price: "180.0",
      imagePath: "images/sepatu3.png",
      description: "Sepatu lari dengan kenyamanan dan performa tinggi.",
    ),
    Shoe(
      name: "Puma RS-X",
      price: "130.0",
      imagePath: "images/sepatu4.png",
      description: "Sepatu retro dengan gaya dan kenyamanan modern.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes of sale
  List<Shoe> getShoesList() {
    return shoesShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

