// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:myapp/components/bottom_navbar_ecommerce.dart";
import "package:myapp/pages/pages_ecommerce/cart_page.dart";
import "package:myapp/pages/pages_ecommerce/shop_page.dart";

class HomePageEcommerce extends StatefulWidget {
  const HomePageEcommerce({super.key});

  @override
  State<HomePageEcommerce> createState() => _HomePageEcommerceState();
}

class _HomePageEcommerceState extends State<HomePageEcommerce> {

  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // method to change the selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
              Icons.menu,
              color: Colors.black,
              ),
              
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
            DrawerHeader(
              child: Image.asset(
                "images/logo1.png",
                color: Colors.white,
              )
            ),
            
            // other pages
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: const Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}