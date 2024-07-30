// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/tutorials/product.dart';

class ModelBlueprint extends StatelessWidget {
  ModelBlueprint({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
    return Product(judul: faker.food.restaurant(), deskripsi: faker.lorem.sentence(), imageURL: "https://picsum.photos/300/300?random=$index", harga: 10000 + Random().nextInt(100000));
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Blueprint'),
        centerTitle: true,
      ),
      body: GridView.builder(
        //padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(child: Image.network(dummyData[index].imageURL),
          footer: Container(
            width: 50,
            height: 50,
            color: Colors.blue,
            child: GridTileBar(
              title: Text(dummyData[index].judul),
              subtitle: Text(dummyData[index].deskripsi),
              trailing: Text(dummyData[index].harga.toString()),
            ),
          ),);
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
