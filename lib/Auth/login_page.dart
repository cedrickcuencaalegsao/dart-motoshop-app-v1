import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login"),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.00,
              child: Image.asset(
                'assets/white_bg.png',
                width: 350, // Set the width
                height: 250, // Set the height
                fit: BoxFit
                    .cover, // Optional: Adjust how the image fits into the box
              ),
            ),
            const SizedBox(
              height: 135.00,
              width: 300.00,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.00,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.00,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forget-password-page');
                },
                child: const Text("Forgot password?")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-page');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: CupertinoColors.activeBlue,
                    minimumSize: const Size(250, 70)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register-page');
                },
                child: const Text("Didn't have an Account?"))
          ],
        ),
      ),
    );
  }
}

// child: ElevatedButton(
//             onPressed: () {
//               Navigator.pushNamed(context, '/home');
//             },
//             child: const Text("Login")),