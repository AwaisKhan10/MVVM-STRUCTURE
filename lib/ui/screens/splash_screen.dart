import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/ui/screens/onbaording/onbaording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => OnbaordingScreen()), // your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "$staticAssets/app_logo.png",
          width: 207,
          height: 77,
        ),
      ),
    );
  }
}
