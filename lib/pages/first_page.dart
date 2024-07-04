
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:myapp/pages/home_page.dart";
import "package:myapp/pages/profile_page.dart";
import "package:myapp/pages/settings_page.dart";

// Section Drawer Widget
class FirstPage extends StatefulWidget {
    FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page to display
  int _selectedIndex = 0; 

  // this method updates the new selected index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we have in our app
  final List _pages = [
    // Homepage
    HomePage(),
  
    // Profilepage
    ProfilePage(),

    // Settingspage
    SettingsPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // Home 
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          ),

        ]
      ),
      
    );
  }
}