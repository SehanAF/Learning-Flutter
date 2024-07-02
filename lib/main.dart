// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {

//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomePage(),
//       theme: ThemeData(
//         useMaterial3: false,
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget
//  {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My App"),
//       ),
//       body: const Center(
//         child: Text("Hello World", style: TextStyle(fontSize: 24, color: Colors.green)),
//       ),
//     );
//   }
// }



// Import the Flutter material library for UI elements.
import "package:flutter/material.dart";

// Entry point of the Flutter application.
void main() {
  // Run the MyApp widget.
  runApp(const MyApp());
}

// StatelessWidget for the root of the application.
class MyApp extends StatelessWidget {
  // Constructor for MyApp, using super.key for optimal performance.
  const MyApp({super.key});

  // Build method to define the UI structure.
  @override
  Widget build(BuildContext context) {
    // Return a MaterialApp widget as the root.
    return MaterialApp(
      // Set the HomePage as the initial route.
      home: const HomePage(),
      // Configure the app's theme, disabling Material 3.
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}

// StatefulWidget for the home page of the app.
class HomePage extends StatefulWidget {
  // Constructor for HomePage, using super.key.
  const HomePage({super.key});

  // Create the state object for HomePage.
  @override
  State<HomePage> createState() => _HomePageState();
}

// State class for HomePage, managing its internal state.
class _HomePageState extends State<HomePage> {
  // Build method to define the UI of the home page.
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget for basic app structure.
    return Scaffold(
      // Set up an AppBar with a title.
      appBar: AppBar(
        title: const Text("My App"),
      ),
      // Membuat container untuk body, mengisi seluruh layar.
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            coll("Papi"), // Widget untuk menampilkan informasi "Papi".
            coll("Mami"), // Widget untuk menampilkan informasi "Mami".
          ],
        ),
      )
    );
  }

  // Widget untuk menampilkan kolom informasi berdasarkan peran orang tua.
  coll(String role_ortu){
    return Padding(
      padding: EdgeInsets.all(8.0), // Memberikan padding di sekitar widget.
      child: Stack( // Menggunakan Stack untuk menumpuk gambar dan teks.
        children: [
          Image.asset("images/logo.png", height: 50, width: 50,), // Menampilkan gambar logo.
          Column( // Widget kolom untuk menampilkan teks.
            mainAxisSize: MainAxisSize.max, // Kolom mengambil ruang sebanyak mungkin.
            mainAxisAlignment: MainAxisAlignment.start, // Teks disejajarkan di awal kolom.
            children: [
              Text("$role_ortu 1", style: TextStyle(color: Colors.white)), // Teks pertama.
              Text("$role_ortu 2", style: TextStyle(color: Colors.white)), // Teks kedua.
              Text("$role_ortu 3", style: TextStyle(color: Colors.white)) // Teks ketiga.
            ],
          )
        ],
      )
    );
  }
}
