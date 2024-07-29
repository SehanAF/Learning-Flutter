// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:myapp/pages/pages_tutorial/navigation.dart';
import 'package:myapp/pages/pages_tutorial/routes.dart';

class HomePageAyah extends StatelessWidget {
  const HomePageAyah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome, Majmudin",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Dokumentasikan kegiatan ayah dan keluarga",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                          ),
                          Icon(
                            Icons.campaign,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildOption("Daily", false),
                          _buildOption("Weekly", true),
                          _buildOption("Monthly", false),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        width: 120,
                        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.emoji_events,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Text(
                              "Lihat Semua",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 15),
                  Stack(
                    children: [
                      Row(
                        children: [
                          CustomCard(
                            width: 110,
                            height: 120,
                            imageUrl: "images/google.png",
                            name: "Rangga",
                            points: "1,000 Point",
                            rank: "2"
                          ),
                          SizedBox(width: 10,),
                          CustomCard(
                            width: 110,
                            height: 170,
                            imageUrl: "images/google.png",
                            name: "Syahrini",
                            points: "1,000 Point",
                            rank: "1"
                          ),
                          SizedBox(width: 10,),
                          CustomCard(
                            width: 110,
                            height: 80,
                            imageUrl: "images/google.png",
                            name: "Maverick",
                            points: "1,000 Point",
                            rank: "3"
                          ),         
                        ],
                      ),
                     
                    ],
                  )
                ],                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 445),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tambahkan Kegiatan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.history,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Story kegiatan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),                                            
                        ]
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[700]
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 60,
                              left: 150,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: 100,
                              child: Text(
                                'Upload Video atau JPG',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),                      
                      Row(
                        children: [
                          Container(
                            width: 270,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Deskripsi kegiatan keluarga..",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                suffixIcon: Icon(Icons.mic, color: Colors.black,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ), 
                                filled: true,
                                fillColor: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/profile');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(50, 50), 
                              maximumSize: Size(50, 50), 
                            ),
                            child: Icon(
                              Icons.send,
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        
      ),
      bottomNavigationBar: BottomNavBar(),
      
    );
  }

  Widget _buildOption(String text, bool isSelected) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(icon: Icons.home, label: 'Home', color: Colors.white, onTap: () {
              Navigator.of(context).pushNamed('/home');
            }),
            NavItem(icon: Icons.article, label: 'Berita', color: Colors.orange, onTap: () {
              Navigator.of(context).pushNamed('/berita');
            }),
            NavItem(icon: Icons.book, label: 'Buku', color: Colors.white, onTap: () {
              Navigator.of(context).pushNamed('/buku');
            }),
            NavItem(icon: Icons.forum, label: 'Forum', color: Colors.white, onTap: () {
              Navigator.of(context).pushNamed('/forum');
            }),
            NavItem(icon: Icons.person, label: 'Profile', color: Colors.white, onTap: () {
              Navigator.of(context).pushNamed('/profile');
            }),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  NavItem({required this.icon, required this.label, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          SizedBox(height: 4),
          Text(label, style: TextStyle(color: color, fontSize: 12)),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final String name;
  final String points;
  final String rank;

  CustomCard({
    required this.width,
    required this.height,
    required this.imageUrl,
    required this.name,
    required this.points,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.emoji_events, color: Colors.orange),
                SizedBox(width: 5),
                Text(
                  points,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDF8600),
                        Color(0xFFFF9B04),
                        Color(0xFFDF8600),
                        Color(0xFFFF9B04),
                        Color(0xFFDF8600),
                        Color(0xFFFF9B04),
                      ],
                      stops: [0.0, 0.215, 0.435, 0.62, 0.82, 1.0],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 35),
                    child: Text(
                      rank,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),      
    );
  }
}
