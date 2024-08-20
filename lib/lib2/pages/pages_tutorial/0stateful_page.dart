import 'package:flutter/material.dart';

// StatefulPage adalah StatefulWidget, yang berarti widget ini bisa berubah
// karena memiliki state yang dapat diperbarui.
class StatefulPage extends StatefulWidget {
  // Konstruktor untuk StatefulPage.
  StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

// _StatefulPageState adalah state dari StatefulPage. Di sinilah logika 
// untuk perubahan state ditulis.
class _StatefulPageState extends State<StatefulPage> {
  // Variabel counter untuk menyimpan nilai yang akan ditampilkan dan diubah.
  int counter = 1;

  // Metode build untuk membangun tampilan UI.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold menyediakan struktur dasar visual seperti app bar, body, dll.
      home: Scaffold(
        // AppBar adalah bar di bagian atas aplikasi.
        appBar: AppBar(
          backgroundColor: Colors.blueAccent, // Warna latar belakang AppBar.
          title: const Text(
            "Stateful Widget", // Teks judul di AppBar.
            style: TextStyle(color: Colors.white), // Warna teks putih.
          ),
          centerTitle: true, // Judul di tengah.
        ),
        // Body dari Scaffold berisi kolom (Column) dengan dua anak widget.
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur jarak antar widget secara merata.
          children: [
            // Teks yang menampilkan nilai dari counter.
            Text(
              counter.toString(), // Menampilkan nilai counter.
              style: TextStyle(fontSize: 50), // Ukuran font besar.
            ),
            // Baris (Row) yang berisi dua tombol untuk mengurangi dan menambah counter.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur jarak antar tombol secara merata.
              children: [
                // Tombol untuk mengurangi nilai counter.
                ElevatedButton(
                  onPressed: () {
                    // Jika counter tidak sama dengan 1, kurangi nilai counter.
                    if (counter != 1) {
                      setState(() {
                        counter--; // Mengurangi nilai counter.
                      });
                    }
                  },
                  child: Icon(Icons.remove), // Ikon minus pada tombol.
                ),
                // Tombol untuk menambah nilai counter.
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++; // Menambah nilai counter.
                    });
                  },
                  child: Icon(Icons.add), // Ikon plus pada tombol.
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
