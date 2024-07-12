import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Salad",
        iconPath: "assets/Icons/plate.svg",
        boxColor: const Color.fromARGB(255, 105, 222, 240),
      ),
    );
    categories.add(
      CategoryModel(
        name: "Cake",
        iconPath: "assets/Icons/pancakes.svg",
        boxColor: Color.fromARGB(255, 38, 89, 139),
      ),
    );
    categories.add(
      CategoryModel(
        name: "Pie",
        iconPath: "assets/Icons/pie.svg",
        boxColor: Color.fromARGB(255, 25, 96, 125),
      ),
    );
    categories.add(
      CategoryModel(
        name: "Smoothies",
        iconPath: "assets/Icons/orange-snacks.svg",
        boxColor: Color.fromARGB(255, 34, 87, 131),
      ),
    );

    return categories;
  }
}
