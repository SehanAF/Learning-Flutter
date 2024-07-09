// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:myapp/services/recipebook/auth_service.dart";
import "package:status_alert/status_alert.dart";

// Definisi class LoginPage yang merupakan StatefulWidget
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// Definisi state dari LoginPage
class _LoginPageState extends State<LoginPage> {
  // Membuat GlobalKey untuk Form
  GlobalKey<FormState> _loginFormKey = GlobalKey();

  // Variabel untuk menyimpan username dan password
  String? username, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar adalah bagian atas aplikasi yang biasanya berisi judul dan tombol navigasi
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true, // Membuat judul berada di tengah
      ),
      // SafeArea memastikan UI tidak terhalang oleh area notifikasi dan lainnya
      body: SafeArea(
        child: _buildUI(), // Memanggil fungsi _buildUI untuk membangun tampilan
      ),
    );
  }

  // Fungsi untuk membangun tampilan UI
  Widget _buildUI() {
    return SizedBox(
      // Mengambil lebar layar perangkat
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max, // Menggunakan ukuran kolom maksimum
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Menyebar widget secara merata
        crossAxisAlignment: CrossAxisAlignment
            .center, // Menempatkan widget di tengah secara horizontal
        children: [
          _title(), // Memanggil widget _title untuk menampilkan judul
          _loginForm(), // Memanggil widget _loginForm untuk menampilkan form login
        ],
      ),
    );
  }

  // Widget untuk judul
  Widget _title() {
    return Text(
      "Recip Book",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  // Widget untuk form login
  Widget _loginForm() {
    return SizedBox(
      // Mengambil 90% lebar layar perangkat
      width: MediaQuery.sizeOf(context).width * 0.90,
      // Mengambil 30% tinggi layar perangkat
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: Form(
        key: _loginFormKey, // Menggunakan _loginFormKey sebagai key untuk form
        child: Column(
          mainAxisSize: MainAxisSize.max, // Menggunakan ukuran kolom maksimum
          mainAxisAlignment:
              MainAxisAlignment.start, // Menempatkan widget di awal kolom
          crossAxisAlignment: CrossAxisAlignment
              .center, // Menempatkan widget di tengah secara horizontal
          children: [
            // Field untuk username
            TextFormField(
              initialValue: "sehun", // Nilai awal untuk username
              onSaved: (value) {
                setState(() {
                  username = value; // Menyimpan nilai username
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Username is required"; // Validasi jika username kosong
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Username", // Label untuk field username
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            // Field untuk password
            TextFormField(
              initialValue: "helloo", // Nilai awal untuk password
              obscureText: true, // Menyembunyikan teks untuk keamanan
              onSaved: (value) {
                setState(() {
                  password = value; // Menyimpan nilai password
                });
              },
              validator: (value) {
                if (value == null || value.length < 5) {
                  return "Enter a valid password"; // Validasi jika password kurang dari 5 karakter
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Password", // Label untuk field password
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            _loginButton(), // Memanggil widget _loginButton untuk menampilkan tombol login
          ],
        ),
      ),
    );
  }

  // Widget untuk tombol login
  Widget _loginButton() {
    return SizedBox(
      // Mengambil 60% lebar layar perangkat
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: ElevatedButton(
        onPressed: () async {
          // Jika form valid, menyimpan state form
          if (_loginFormKey.currentState?.validate() ?? false) {
            _loginFormKey.currentState?.save();
            bool result = await AuthService().login(
              username!,
              password!,
            );
            if (result) {
              Navigator.pushReplacementNamed(context, "/home");
            } else {
              StatusAlert.show(
                context,
                duration: const Duration(seconds: 2),
                title: 'Login Failed',
                subtitle: "Please try again",
                configuration: const IconConfiguration(
                  icon: Icons.error,
                ),
                maxWidth: 260,
              );
            }
          }
        },
        child: Text("Login"), // Teks pada tombol login
      ),
    );
  }
}
