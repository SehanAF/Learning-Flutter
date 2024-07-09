import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RecipBook"
        ),
        centerTitle: true,
      ),
      body: _buildUI(),
    );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3518108319.
  Widget _buildUI() {
    return Container();
  }
}
