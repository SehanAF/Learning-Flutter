// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/models/breakfast/category_model.dart';
import 'package:myapp/models/breakfast/diet_model.dart';

class HomePageBreakfast extends StatefulWidget {
  HomePageBreakfast({super.key});

  @override
  State<HomePageBreakfast> createState() => _HomePageBreakfastState();
}

class _HomePageBreakfastState extends State<HomePageBreakfast> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiet() {
    diets = DietModel.getDiets();
  }

  @override
  void initState() {
    super.initState();
    _getInitialInfo();
  }

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchField(),
            SizedBox(height: 30),
            _categoriesSection(),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [               
                Padding(       
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Recommendation\nfor Diet",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 240,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 210,
                        decoration: BoxDecoration(
                          color: diets[index].boxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              diets[index].iconPath
                            ),
                            Text(
                              diets[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              diets[index].level + ' | ' + diets[index].duration + ' | ' + diets[index].calorie,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 130,
                              child: Center(
                                child: Text(
                                  "View",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 105, 222, 240),
                                    Color.fromARGB(255, 38, 89, 139),
                                  ]
                                ),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                    itemCount: diets.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Category",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          categories[index].iconPath,
                        ),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 0.0,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.search),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    thickness: 1,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.filter_list),
                  ),
                ],
              ),
            ),
          ),
          contentPadding: EdgeInsets.all(15),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          // Handle back button tap
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 195, 195, 195),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: const Color.fromARGB(255, 1, 1, 1),
            size: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Handle more button tap
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 195, 195, 195),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.more_horiz,
              color: const Color.fromARGB(255, 1, 1, 1),
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
