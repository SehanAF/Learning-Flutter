// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  static const nameRoute = "/homeprofile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage('images/google.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Majmudin Suhadin',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.emoji_events, color: Colors.orange),
                                SizedBox(width: 5),
                                Text('1,000 Point',
                                    style: TextStyle(color: Colors.orange)),
                                SizedBox(width: 5),
                              ],
                            ),
                          ),
                          SizedBox(width: 2),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/ranking');
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Lihat ranking",
                                  style: TextStyle(color: Colors.orange),
                                ),
                                SizedBox(width: 3),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.orange,
                                  size: 13,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Lórem ipsum hexajor nesm, nativ, att labavis bes.\nKroskapet diav, sedan fos. Du kan',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Istri"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 160,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Liliana',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Anak"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 160,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Liliana',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tahun Ajaran Anak"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '2023 - 2026',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SettingOption(
                    title: "Edit Profile",
                    onTap: () {
                      Navigator.of(context).pushNamed('/editprofile');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingOption(
                    title: "FAQ",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingOption(
                    title: "Ubah Password",
                    onTap: () {
                      Navigator.of(context).pushNamed('/editpassword');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingOption(
                    title: "Log out",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SettingOption extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  SettingOption({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 400,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: ClipOval(
              child: IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
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