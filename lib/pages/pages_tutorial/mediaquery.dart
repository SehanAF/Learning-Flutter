// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({super.key});

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;

    final myAppBar = AppBar(
      title: Text('Responsive Page'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );

    final bodyHeight = MediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        appBar: myAppBar,
        body: Center(
          child: (isLandscape) ? Column(
            children: [
              Container(
                height: bodyHeight * 0.5,
                width: MediaQueryHeight,
                color: Colors.amber,
              ),
              Container(
                height: bodyHeight * 0.5,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: Container(
                        color: Color.fromARGB(255, Random().nextInt(156), Random().nextInt(156), Random().nextInt(156)),
                      ),
                    );
                  },
                )
              ),
            ],
          )
          : Column(
            children: [
              Container(
                height: bodyHeight * 0.3,
                width: MediaQueryHeight,
                color: Colors.amber,
              ),
              Container(
                height: bodyHeight * 0.7,
                color: Colors.red,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text('Halo Semua'),
                    );
                  }
                ),
              ),
            ],
          )
        )
      );
  }
}
