// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class RankingPage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
                    backgroundImage: NetworkImage(faker.image.image(random: true)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    faker.person.firstName(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '800 Point',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
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
                  subtitle: Text('${index + 1}'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(faker.image.image(random: true)),
                  ),
                  title: Text(faker.person.name()),
                  
                  trailing: Text('800 Point', style: TextStyle(color: Colors.orange)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}