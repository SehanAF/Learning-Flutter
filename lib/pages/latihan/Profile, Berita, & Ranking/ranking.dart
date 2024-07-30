// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class RankingPage extends StatelessWidget {
  final Faker faker = Faker();
  static const nameRoute = "/rankingpage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange,),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Ranking'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                     backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${faker.randomGenerator.integer(100)}'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    faker.person.firstName(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.emoji_events, color: Colors.orange),
                      SizedBox(width: 5),
                      Text(
                        '800 Point',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    'No. 24th',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${index + 1}' + ".",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 1}'),
                      ),
                    ],
                  ),
                  title: Text(Faker().person.name()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.emoji_events, color: Colors.orange),
                      SizedBox(width: 5),
                      Text('800 Point', style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}