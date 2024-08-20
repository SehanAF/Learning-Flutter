// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeBeritaPage extends StatelessWidget {
  const HomeBeritaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(
                "Berita Populer",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Stack(    
                alignment: Alignment.bottomLeft,            
                children: [
                  Container(
                    height: 220,
                    width: 370,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("images/ngaji.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Menghafal Al-Quran dengan Lebih Efektif: Cara\nMudah yang Bisa Anda Lakukan",
                      style: TextStyle(           
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),                
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Center(
                    child: Container(
                      width: 50,
                      height: 4,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text(
                "Berita Terbaru",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.orange,         
                ),
              ),
              SizedBox(height: 10,),
              // Duplikat BeritaItem
              BeritaItem(
                imagePath: "images/ngaji.jpeg",
                title: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                time: "5 Menit yang lalu",
              ),
              BeritaItem(
                imagePath: "images/ngaji.jpeg",
                title: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                time: "10 Menit yang lalu",
              ),
              BeritaItem(
                imagePath: "images/ngaji.jpeg",
                title: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                time: "15 Menit yang lalu",
              ),
              BeritaItem(
                imagePath: "images/ngaji.jpeg",
                title: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                time: "20 Menit yang lalu",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BeritaItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String time;

  const BeritaItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                time,
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
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