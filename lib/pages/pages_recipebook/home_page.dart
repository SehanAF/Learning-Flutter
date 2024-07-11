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
        title: const Text("RecipBook"),
        centerTitle: true,
      ),
      body: SafeArea(child: _buildUI()),
    );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3518108319.
  Widget _buildUI() {
    return Container(
      child: Column(
        children: [
          _recipeTypeButtons(),
        ],
      ),
    );
  }

  Widget _recipeTypeButtons() {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: FilledButton(
              onPressed: () {},
              child: const Text("Snack"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: FilledButton(
              onPressed: () {},
              child: const Text("Breakfast"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: FilledButton(
              onPressed: () {},
              child: const Text("Lunch"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: FilledButton(
              onPressed: () {},
              child: const Text("Dinner"),
            ),
          ),
        ],    
      )
    );
  }

  Widget _buildButton(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
