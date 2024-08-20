// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditProfileDiskusi extends StatelessWidget {
  const EditProfileDiskusi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 20, 
            height: 20, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back, color: Colors.orange,
                size: 20,    
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35, 
              height: 35, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.more_horiz, 
                    color: Colors.black,
                    size: 20, 
                  ),
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                ),
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/google.png"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sehan Alfarisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sept 12, 2023",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                "Menjadi Keluarga Harmonis Versi kalian Gimana nih, hal yang harus dilakukan untuk menjaganya ?",
                style: TextStyle(
                  fontSize: 14
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("10"),
                      SizedBox(width: 5),
                      Icon(Icons.comment, color: Colors.grey),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Text("2"),
                      SizedBox(width: 5),
                      Icon(Icons.thumb_down, color: Colors.grey),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Text("1.2"),
                      SizedBox(width: 5),
                      Icon(Icons.thumb_up, color: Colors.orange),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(             
                color: Colors.grey, 
                thickness: 1, 
              ),
              Row(
                children: [
                  Text(
                    "Terbaru",
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {
                      // Lakukan sesuatu saat ikon ditekan
                    },
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan anak-anak pada bagian atas
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/google.png"),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alexa Maverick",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "Lörem ipsum godade negt ar tisånyn.\nRev kapp lesserwisser därför att tetravalig.",
                            style: TextStyle(
                              fontSize: 14
                            ),
                          ),
                          SizedBox(width: 15,),
                          Icon(Icons.favorite, color: Colors.orange)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "102 likes",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            "Reply",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("View 3 more replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan anak-anak pada bagian atas
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("images/google.png"),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alexa Maverick",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "Lörem ipsum godade negt ar tisånyn.\nRev kapp lesserwisser därför att tetravalig.",
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(Icons.favorite, color: Colors.orange)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "102 likes",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Text(
                                    "Reply",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),                                                
                            ],
                          ),
                        ],
                      ),    
                    ],
                  ),
                ],
              ),    
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan anak-anak pada bagian atas
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/google.png"),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alexa Maverick",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "Lörem ipsum godade negt ar tisånyn.\nRev kapp lesserwisser därför att tetravalig.",
                            style: TextStyle(
                              fontSize: 14
                            ),
                          ),
                          SizedBox(width: 15,),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "102 likes",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            "Reply",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("View 3 more replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ]
                  )
                ]
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan anak-anak pada bagian atas
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/google.png"),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alexa Maverick",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "Lörem ipsum godade negt ar tisånyn.\nRev kapp lesserwisser därför att tetravalig.",
                            style: TextStyle(
                              fontSize: 14
                            ),
                          ),
                          SizedBox(width: 15,),
                          Icon(Icons.favorite, color: Colors.orange)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "102 likes",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            "Reply",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("View 3 more replies",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ]
                  )
                ]
              )
            ]
          )
        ),
      ),
    );
  }
}