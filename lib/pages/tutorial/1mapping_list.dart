import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  MappingList({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Sehun",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black","Red", "Blue", "Black","Red", "Blue", "Black","Red", "Blue", "Black"]
    },
    {
      "name": "Alexa",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black"]
    },
    {
      "name": "Givi",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black"]
    },
    {
      "name": "Sehun",
      "age": 20,
      "gender": "Male",
      "favColor": ["Red", "Blue", "Black","Red", "Blue", "Black","Red", "Blue", "Black","Red", "Blue", "Black"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
          centerTitle: true,
        ),
        body: ListView(
          children: myList.map((data) {
            List myfavcolor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20, 
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data["name"]}"),
                            Text("Age: ${data["age"]}"),
                            Text("Gender: ${data["gender"]}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.amberAccent,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
