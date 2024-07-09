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
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _screens = [
    {
      'image': "assets/login.png",
      'animation': "assets/black.json",
    },
    {
      'image': "assets/image1.jpg",
      'animation': "assets/black.json",
    },
    {
      'image': "assets/image2.jpg",
      'animation': "assets/black.json",
    },
    {
      'image': "assets/image3.jpg",
      'animation': "assets/black.json",
    },
  ];

  @override
  void initState() {
    super.initState();
    _startSplashSequence();
  }

  void _startSplashSequence() {
    // Start displaying images and animation after a delay
    for (int i = 0; i < _screens.length + 1; i++) {
      Future.delayed(Duration(seconds: i * 2), () {
        setState(() {
          _currentIndex = i;
        });

        if (i == _screens.length) {
          // After displaying all screens, navigate to login page
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
              if (_currentIndex < _screens.length)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 135),
                      child: Image.asset(
                        _screens[_currentIndex]['image'],
                        height: 450,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -4),
                      child: Lottie.asset(
                        _screens[_currentIndex]['animation'],
                        height: 175,
                      ),
                    ),
                  ],
                ),
              if (_currentIndex == _screens.length)
                Text(
                  "Let's Score!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
