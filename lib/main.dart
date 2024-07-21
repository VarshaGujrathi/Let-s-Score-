import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart'; // Import the login.dart file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp firebaseApp = await Firebase.initializeApp(
    options: 
    FirebaseOptions(
      apiKey: "AIzaSyBW23r0mLgUI8hX8mv7MSX9jQjH_Xbc-2o",
      appId: "1:306123812399:android:349d76dcbfef28e1fc60da",
      messagingSenderId: "306123812399",
      projectId: "letsscore-9c041",
    ),
  );

  runApp(MyApp(initialization: Future.value(firebaseApp)));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> initialization;

  MyApp({Key? key, required this.initialization}) : super(key: key);

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
    for (int i = 0; i < _screens.length + 1; i++) {
      Future.delayed(Duration(seconds: i * 2), () {
        setState(() {
          _currentIndex = i;
        });

        if (i == _screens.length) {
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