import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: "Blueberry Pancake",
        iconPath: "assets/Icons/blueberry-pancake.svg",
        level: "Easy",
        duration: "30mins",
        calorie: "180kCal",
        viewIsSelected: true,
        boxColor: Color.fromARGB(255, 38, 89, 139),
      ),
    );
    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/Icons/honey-pancakes.svg",
        level: "Medium",
        duration: "20mins",
        calorie: "150kCal",
        viewIsSelected: false,
        boxColor: Color.fromARGB(255, 105, 222, 240),
      ),
    );
    diets.add(
      DietModel(
        name: "Salmon Nagiri",
        iconPath: "assets/Icons/salmon-nigiri.svg",
        level: "Hard",
        duration: "40mins",
        calorie: "250kCal",
        viewIsSelected: false,
        boxColor: Color.fromARGB(255, 25, 96, 125),
      ),
    );
    diets.add(
      DietModel(
        name: "Canai Bread",
        iconPath: "assets/Icons/canai-bread.svg",
        level: "Easy",
        duration: "15mins",
        calorie: "120kCal",
        viewIsSelected: true,
        boxColor: Color.fromARGB(255, 34, 87, 131),
      ),
    );

    return diets;
  }
}
