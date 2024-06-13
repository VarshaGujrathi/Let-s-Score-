import 'package:flutter/material.dart';
// ignore: unused_import
import 'login.dart'; // Import the login.dart file
import 'game.dart'; // Import the game.dart file

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 193, 2),
        title: Text('Create Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60), // Add spacing at the top
              buildTextFieldWithIcon(Icons.person, 'Username'),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.email, 'Email'),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.lock, 'Password', obscureText: true),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.lock, 'Confirm Password', obscureText: true),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GamePage()), // Navigate to GamePage
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 251, 193, 2),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 60), // Add spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldWithIcon(IconData icon, String label, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.white.withOpacity(0.7)), // Text color with transparency
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1), // Background color with transparency
        prefixIcon: Icon(icon, color: Colors.white.withOpacity(0.7)),
        labelText: label,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
