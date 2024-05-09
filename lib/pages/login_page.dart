// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/layoutpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  
  void login() {
    setState(() {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LayoutPage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "HomeGuard",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 100,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(gapPadding: 5),
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.all(20)),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(gapPadding: 5),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.key),
                  contentPadding: EdgeInsets.all(20)),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                  onPressed: login,
                  //style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(5, 50))),
                  child: const Row(
                    children: [
                      Icon(Icons.login,size: 30),
                      SizedBox(width: 20,),
                      Text("Login")
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
