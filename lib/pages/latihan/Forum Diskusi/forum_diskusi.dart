// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ForumDiskusi extends StatelessWidget {
  const ForumDiskusi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text(
                        "Forum Diskusi",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),                       
                      ),
                      Text(
                        "Diskusi tentang Keluarga",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
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
                          Icons.notifications_active,
                          size: 25,
                          color: Colors.black,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 370,
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
              SizedBox(height: 20,),
              CustomCard(
                avatarImage: "images/google.png",
                name: "Sehan Alfarisi",
                date: "Sep 27, 2024",
                content: "Menjadi Keluarga Harmonis Versi kalian Gimana nih, hal yang harus dilakukan untuk menjaganya?",
                commentsCount: 10,
                dislikesCount: 2,
                likesCount: 1.2,
              ),
              SizedBox(height: 20,),
              CustomCard(
                avatarImage: "images/google.png",
                name: "Sehan Alfarisi",
                date: "Sep 27, 2024",
                content: "Menjadi Keluarga Harmonis Versi kalian Gimana nih, hal yang harus dilakukan untuk menjaganya?",
                commentsCount: 10,
                dislikesCount: 2,
                likesCount: 1.2,
              ),
              SizedBox(height: 20,),
              CustomCard(
                avatarImage: "images/google.png",
                name: "Sehan Alfarisi",
                date: "Sep 27, 2024",
                content: "Menjadi Keluarga Harmonis Versi kalian Gimana nih, hal yang harus dilakukan untuk menjaganya?",
                commentsCount: 10,
                dislikesCount: 2,
                likesCount: 1.2,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CustomCard extends StatelessWidget{
  final String avatarImage;
  final String name;
  final String date;
  final String content;
  final int commentsCount;
  final int dislikesCount;
  final double likesCount;

  CustomCard({
    required this.avatarImage,
    required this.name,
    required this.date,
    required this.content,
    required this.commentsCount,
    required this.dislikesCount,
    required this.likesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(avatarImage),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            date,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        content,
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 60,
                color: Colors.grey.shade200,
                child: Stack(
                  children: [
                    Text(
                      "...",
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(commentsCount.toString()),
                            SizedBox(width: 5),
                            Icon(Icons.comment, color: Colors.grey),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Text(dislikesCount.toString()),
                            SizedBox(width: 5),
                            Icon(Icons.thumb_down, color: Colors.grey),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Row(
                          children: [
                            Text(likesCount.toString()),
                            SizedBox(width: 5),
                            Icon(Icons.thumb_up, color: Colors.orange),
                          ],
                        ),
                      ],
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
            NavItem(icon: Icons.book, label: 'Buku', color: Colors.white),
            NavItem(icon: Icons.forum, label: 'Forum', color: Colors.orange),
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