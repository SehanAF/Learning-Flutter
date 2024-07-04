// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

// Section Drawer Widget
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),  
            ),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}