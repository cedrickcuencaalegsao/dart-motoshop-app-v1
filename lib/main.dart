import 'package:flutter/material.dart';
// Auth pages.
import 'Auth/login_page.dart';
import 'Auth/register_page.dart';
import 'Auth/forget_password_page.dart';
// Pages.
import 'Page/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {
        '/login-page': (context) => const LoginPage(),
        '/register-page': (context) => const RegisterPage(),
        '/forget-password-page': (context) => const ForgetPasswordPage(),
        '/home-page': (context) => const MyHomePage(),
      },
    );
  }
}
