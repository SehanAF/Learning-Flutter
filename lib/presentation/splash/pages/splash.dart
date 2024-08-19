// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/core/configs/assets/app_vectors.dart';
import 'package:myapp/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    redirect();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo
        )
      )
    );
  }

  // untuk delay splash page sebelum ke home page, seperti loading.
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => GetStartedPage()
      )
    );
    // await Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
  }
}