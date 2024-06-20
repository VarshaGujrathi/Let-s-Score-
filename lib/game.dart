import 'package:flutter/material.dart';
// ignore: unused_import
import 'login.dart'; // Import the login.dart file
// ignore: unused_import
import 'prescore.dart'; // Import the prescore.dart file
// ignore: unused_import
import 'score.dart'; // Import the score.dart file

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align items at the top
            children: [
              SizedBox(height: 20), // Add space between text and image
              Text(
                'Register Now!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20), // Add space between text and buttons
              buildButton('Volleyball'),
              SizedBox(height: 10), // Add space between buttons
              buildButton('Football'),
              SizedBox(height: 10),
              buildButton('Cricket'),
              SizedBox(height: 10),
              buildButton('Throwball'),
              SizedBox(height: 10),
              buildButton('Chess'),
              SizedBox(height: 10),
              buildButton('Table Tennis'),
              SizedBox(height: 10),
              buildButton('Track'),
              SizedBox(height: 10),
              buildButton('Dodgeball'),
              SizedBox(height: 10),
              buildButton('Carrom'),
              SizedBox(height: 10),
              buildButton('Badminton'),
              SizedBox(height: 10), // Add space after the last button
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String label) {
    return Container(
      height: 50, // Set button height
      width: 200, // Set button width
      margin: EdgeInsets.symmetric(vertical: 5), // Add margin to create space between buttons
      child: ElevatedButton(
        onPressed: () {
          // Add your button logic here
        },
        child: Text(label, style: TextStyle(color: Colors.black)), // Set text color to black
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 251, 193, 2), // Set button color to yellow
        ),
      ),
    );
  }
}
