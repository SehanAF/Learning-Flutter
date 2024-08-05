import 'package:flutter/material.dart';

class AllProducts with ChangeNotifier {
  List<AllProducts> _allproducts = [];

  List<AllProducts> get allproducts {
    return [..._allproducts];
  }

  
}
