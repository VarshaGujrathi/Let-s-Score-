import 'package:flutter/material.dart';
import 'package:score_app/intra.dart';
import 'prescore.dart'; // Import the prescore.dart file
import 'score.dart'; // Import the score.dart file
import 'darbi.dart'; // Create and import the darbi.dart file

class OptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background color to black
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Set back button color to white
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Align items at the center
          children: [
            Text(
              "Let's Score !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                height: -4,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30), // Add space between the text and the first button
            buildButton(context, 'Pre Score', PreScorePage()),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Score', ScorePage()),
            SizedBox(height: 20),
            buildButton(context, 'Intra', IntraPage()),
            SizedBox(height:20), // Add space between buttons
            buildButton(context, 'Darbi', DarbiPage()), // Navigate to DarbiPage
            SizedBox(height: 100), // Add space at the bottom to shift buttons up
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String label, Widget page) {
    return Container(
      width: 200, // Set button width
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page), // Navigate to the respective page
          );
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
