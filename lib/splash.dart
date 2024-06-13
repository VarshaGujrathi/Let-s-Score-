// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showImage1 = true;
  bool _showImage2 = false;
  bool _showImage3 = false;

  @override
  void initState() {
    super.initState();
    // Show second image after 10 seconds
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _showImage1 = false;
        _showImage2 = true;
      });
    });
    // Show third image after 20 seconds
    Future.delayed(const Duration(seconds: 20), () {
      setState(() {
        _showImage2 = false;
        _showImage3 = true;
      });
    });
    // Navigate to home screen after 30 seconds
    Future.delayed(const Duration(seconds: 30), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 193, 2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_showImage1)
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Column(
                  children: [
                    Image.asset("assets/image1.jpg", height: 450),
                    const Text(
                      "Let's Score!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: Lottie.asset("assets/black.json", height: 175),
                    ),
                  ],
                ),
              ),
            if (_showImage2)
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Column(
                  children: [
                    Image.asset("assets/image2.jpg", height: 450),
                    const Text(
                      "Let's Score!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: Lottie.asset("assets/black.json", height: 175),
                    ),
                  ],
                ),
              ),
            if (_showImage3)
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Column(
                  children: [
                    Image.asset("assets/image3.jpg", height: 450),
                    const Text(
                      "Let's Score!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: Lottie.asset("assets/black.json", height: 175),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('Welcome to Home Screen!')),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}