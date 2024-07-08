
// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20
        ),
        
      ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _buildUI()
      ),
    );

  }
    Widget _buildUI(){
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _title(),
          _loginForm(),
        ],
      ),
    );
  }
    Widget _title(){
    return Text(
      "Recip Book",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _loginForm(){
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.90,
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _loginButton(){
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Login"),
      ),
    );
  }
}
