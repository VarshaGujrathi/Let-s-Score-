import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:score_app/adminuser.dart';
// ignore: unused_import
import 'login.dart'; // Import the login.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set debug banner to false
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
  bool _showImage1 = true;
  bool _showImage2 = false;
  bool _showImage3 = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showImage1 = false;
        _showImage2 = true;
      });
    });
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _showImage2 = false;
        _showImage3 = true;
      });
    });
    Future.delayed(const Duration(seconds: 9), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminUser()),
      );
    });
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
              _showImage1
                  ? Padding(
                      padding: const EdgeInsets.only(top: 135),
                      child: Image.asset(
                        "assets/image1.jpg",
                        height: 450,
                      ),
                    )
                  : Container(),
              _showImage1
                  ? Text(
                      "Let's Score !",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    )
                  : Container(),
              _showImage1
                  ? Transform.translate(
                      offset: Offset(0, -4),
                      child: Lottie.asset(
                        "assets/black.json",
                        height: 175,
                      ),
                    )
                  : Container(),
              _showImage2
                  ? Padding(
                      padding: const EdgeInsets.only(top: 135),
                      child: Image.asset(
                        "assets/image2.jpg",
                        height: 450,
                      ),
                    )
                  : Container(),
              _showImage2
                  ? Text(
                      "Let's Score !",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    )
                  : Container(),
              _showImage2
                  ? Transform.translate(
                      offset: Offset(0, -4),
                      child: Lottie.asset(
                        "assets/black.json",
                        height: 175,
                      ),
                    )
                  : Container(),
              _showImage3
                  ? Padding(
                      padding: const EdgeInsets.only(top: 135),
                      child: Image.asset(
                        "assets/image3.jpg",
                        height: 450,
                      ),
                    )
                  : Container(),
              _showImage3
                  ? Text(
                      "Let's Score !",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    )
                  : Container(),
              _showImage3
                  ? Transform.translate(
                      offset: Offset(0, -4),
                      child: Lottie.asset(
                        "assets/black.json",
                        height: 175,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
