// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  const DetailBook({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 10, 
            height: 10, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back, color: Colors.orange,
                size: 15,             
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text('Detail Buku', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "images/book2.png",
                width: 200,
                height: 300,
                fit: BoxFit.cover,         
              ),         
            ),
            SizedBox(height: 20),
            Text(
              "Buku Cerita Anak",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Mudah Mudahan Jadi Lebih Baik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Stock : 2",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.orange,
                    indicatorWeight: 3,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Cerita Singkat",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Komentar",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ]                
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 350,                   
                    child: TabBarView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cerita Singkat",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Lörem ipsum godade negt ar tisånyn. Rev kapp lesserwisser därför att tetravaliga, protes. Vurat ov, stenolär kärtad i geor. Sode kvasibör ler. Såt megaren: såsade vijånt. Bevagisk visinde trasamma diara i id. Ement dinera deskrati: om dekas pseudovis. Berår måvingar preren suprastik. Rening dir, lest eng, telenat. Läsk kör. Egologi ysamma tinan hexas sar. Bedos åmining tenåligt, och lack vatel. Dekar. Prelingar läk difajånat. Aspludd rel. ",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 60,),
                            Center(
                              child: FloatingActionButton.extended(
                                onPressed: () {},
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                label: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                                  child: Text(
                                    "Pinjam Buku",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Komentar",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            UserComment(
                              avatarPath: "images/google.png",
                              userName: "Jane Cooper",
                              comment: "Sangat bagus bacaannya untuk anak-anak.",
                            ),
                            SizedBox(height: 20,),
                            UserComment(
                              avatarPath: "images/google.png",
                              userName: "Alexa Mav",
                              comment: "Sangat bagus bacaannya untuk anak-anak.",
                            ),
                            SizedBox(height: 20,),
                            UserComment(
                              avatarPath: "images/google.png",
                              userName: "Levy Zak",
                              comment: "Sangat bagus bacaannya untuk anak-anak.",
                            ),
                            SizedBox(height: 60,),
                            Center(
                              child: FloatingActionButton.extended(
                                onPressed: () {},
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                label: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                                  child: Text(
                                    "Pinjam Buku",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),             
            ),           
          ],
        ),
      ),
    );
  }
}

class UserComment extends StatelessWidget {
  final String avatarPath;
  final String userName;
  final String comment;

  const UserComment({
    Key? key,
    required this.avatarPath,
    required this.userName,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundImage: AssetImage(avatarPath),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              comment,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
