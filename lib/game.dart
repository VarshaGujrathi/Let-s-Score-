import 'package:flutter/material.dart';
import 'login.dart'; // Import the login.dart file
import 'prescore.dart'; // Import the prescore.dart file
import 'score.dart'; // Import the score.dart file

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.menu, color: Colors.white, size: 30),
          onSelected: (String result) {
            switch (result) {
              case 'pre_score':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreScorePage()), // Navigate to PreScorePage
                );
                break;
              case 'score':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScorePage()), // Navigate to ScorePage
                );
                break;
              case 'logout':
                // Navigate to the login page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to LoginPage
                );
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'pre_score',
              child: Text('Pre-score'),
            ),
            const PopupMenuItem<String>(
              value: 'score',
              child: Text('Score'),
            ),
            const PopupMenuItem<String>(
              value: 'logout',
              child: Text('Logout'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, // Adjusted height
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
                buildButton('Badminton'),
                SizedBox(height: 10), // Add space after the last button
              ],
            ),
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
