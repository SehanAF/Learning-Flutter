import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/latihan/Verifikasi,%20Home%20&%20Pengumuman/home_page.dart';
import 'package:myapp/pages/pages_tutorial/3appbar.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Page"),
      ),
      body: Center(
        child: Text("Navigation Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return appbar();
              },
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
