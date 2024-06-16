import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart'; // Import the login.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;
  final List<String> _images = [
    "assets/login.jpg", // New logo image at the beginning
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg"
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= _images.length; i++) {
      Future.delayed(Duration(seconds: i * 3), () {
        if (i < _images.length) {
          setState(() {
            _currentIndex = i;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 193, 2),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Image.asset(
                  _images[_currentIndex],
                  height: 450,
                ),
              ),
              Text(
                "Let's Score !",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              if (_currentIndex == 0)
                Transform.translate(
                  offset: Offset(0, -4),
                  child: Lottie.asset(
                    "assets/black.json",
                    height: 175,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
