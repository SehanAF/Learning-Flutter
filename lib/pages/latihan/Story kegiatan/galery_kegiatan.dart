// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/galery%20kegiatan/information.dart';

class GaleryKegiatan extends StatefulWidget {
  GaleryKegiatan({super.key});

  @override
  State<GaleryKegiatan> createState() => _GaleryKegiatanState();
}

class _GaleryKegiatanState extends State<GaleryKegiatan> {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Information> dummyData = List.generate(100, (index) {
      DateTime date = faker.date.dateTime(minYear: 2020, maxYear: 2025);
      String formattedDate = DateFormat("d MMMM, yyyy").format(date);

      return Information(
        judul: faker.lorem.sentence(),
        tanggal: formattedDate,
        imageURL: "https://picsum.photos/300/300?random=$index",
      );
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.orange,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Galery Kegiatan'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          final info = dummyData[index];
          return Card(
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          info.judul,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(info.tanggal),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      info.imageURL,
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
