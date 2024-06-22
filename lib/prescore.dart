import 'package:flutter/material.dart';
// ignore: unused_import
import 'game.dart'; // Import the game.dart file
import 'rule.dart'; // Import the rule.dart file

class PreScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background color to black
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align items at the top
          children: [
            SizedBox(height: 50), // Add space at the top to move content upwards
            Text(
              'Pre Score !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50), // Add more space to shift buttons down
            buildButton(context, 'Registration'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Schedule'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Rule Book'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Updates'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Winners'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'History'),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String label) {
    return Container(
      width: 200, // Set button width
      child: ElevatedButton(
        onPressed: () {
          if (label == 'Registration') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GamePage()), // Navigate to GamePage
            );
          } else if (label == 'Rule Book') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RulePage()), // Navigate to RulePage
            );
          } else {
            // Add your button logic here for other buttons
          }
        },
        child: Text(label, style: TextStyle(color: Colors.black)), // Set text color to black
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 251, 193, 2), // Set button color to yellow
          padding: EdgeInsets.symmetric(vertical: 15), // Set padding to make the button larger
        ),
      ),
    );
  }
}
