// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBook extends StatelessWidget {
  const HomeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pilih buku bacaan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Pilih buku yang ingin di pinjam",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Stack(alignment: Alignment.center, children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag,
                      size: 25,
                      color: Colors.black,
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 280,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Cari buku cerita..",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      suffixIcon: Icon(
                        Icons.search_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ), // Ikon pengaturan
                      onPressed: () {
                        // Aksi saat ikon diklik
                        print('Pengaturan ikon diklik');
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryChip(label: 'Semua', isSelected: true),
                  CategoryChip(label: 'Fantasi', isSelected: false),
                  CategoryChip(label: 'Horor', isSelected: false),
                  CategoryChip(label: 'Sejarah', isSelected: false),
                  CategoryChip(label: 'Seni', isSelected: false),
                  CategoryChip(label: 'Comedy', isSelected: false),
                  CategoryChip(label: 'Aksi', isSelected: false),
                  CategoryChip(label: 'Action', isSelected: false),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                BookCard(
                  imageUrl: "images/book2.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Mudah Mudahan Jadi lebih baik",
                  stock: "Stok: 2",
                ),
                SizedBox(
                  width: 20,
                ),
                BookCard(
                  imageUrl: "images/book1.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Menyelamatkan Planet Biru",
                  stock: "Stok: 2",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                BookCard(
                  imageUrl: "images/book1.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Mudah Mudahan Jadi lebih baik",
                  stock: "Stok: 2",
                ),
                SizedBox(
                  width: 20,
                ),
                BookCard(
                  imageUrl: "images/book2.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Menyelamatkan Planet Biru",
                  stock: "Stok: 2",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                BookCard(
                  imageUrl: "images/book2.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Menyelamatkan Planet Biru",
                  stock: "Stok: 2",
                ),
                SizedBox(
                  width: 20,
                ),
                BookCard(
                  imageUrl: "images/book1.png",
                  title: "Buku Cerita Anak Anak",
                  subtitle: "Mudah Mudahan Jadi lebih baik",
                  stock: "Stok: 2",
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,      
        ),
        child: FloatingActionButton(
          onPressed: () {
            print("button ditekan");
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.orange,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2427909134.
class BookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String stock;

  BookCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 170,
          height: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  imageUrl,
                  width: 170,
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      title,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      subtitle,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      stock,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
            NavItem(icon: Icons.home, label: 'Home', color: Colors.white),
            NavItem(icon: Icons.article, label: 'Berita', color: Colors.white),
            NavItem(icon: Icons.book, label: 'Buku', color: Colors.orange),
            NavItem(icon: Icons.forum, label: 'Forum', color: Colors.white),
            NavItem(icon: Icons.person, label: 'Profile', color: Colors.white),
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

  NavItem({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoryChip({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Chip(
          label: Text(label),
          backgroundColor: isSelected ? Colors.orange : Colors.white,
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
          side: BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ));
  }
}
