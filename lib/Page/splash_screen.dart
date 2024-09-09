import 'package:flutter/material.dart';
import 'dart:async';
import '../Auth/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // add splash screen here.
    Timer(const Duration(seconds: 3), () {
      // navigate after 3 seconds.
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF38B6FF),
      body: Center(
        child: Image.asset(
          'assets/3.png',
          width: 200.00,
          height: 200.00,
        ),
      ),
    );
  }
}
