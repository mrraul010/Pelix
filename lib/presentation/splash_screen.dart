import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pelix/presentation/mainpage/screen_main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ScreenMainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff12111F),
      body: Center(
        child: Image.asset(
          'assets/pelixlogo.png',
          scale: 1.4,
        ),
      ),
    );
  }
}
