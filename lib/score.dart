import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar background color to white
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align items at the top
          children: [
            SizedBox(height: 50), // Add space at the top to move content upwards
            Text(
              'Score !',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100), // Add more space to shift buttons down
            buildButton(context, 'Schedule'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Rule Book'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Updates'),
            SizedBox(height: 20), // Add space between buttons
            buildButton(context, 'Winners'),
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
          // Add your button logic here
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
