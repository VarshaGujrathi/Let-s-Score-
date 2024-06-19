import 'package:flutter/material.dart';
import 'create.dart'; // Import the create.dart file
import 'option.dart'; // Import the option.dart file

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.menu, color: Colors.white, size: 30),
          onSelected: (String result) {
            if (result == 'logout') {
              // Add your logout logic here
              Navigator.pop(context);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'logout',
              child: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60), // Add spacing at the top
              Text(
                'Welcome !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10), // Add some spacing between the texts
              Text(
                'Login to continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20), // Add some spacing between the text and the email field
              buildTextFieldWithIcon(Icons.email, 'Email'),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.lock, 'Password', obscureText: true),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Add your forgot password logic here
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OptionPage()), // Navigate to OptionPage
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 251, 193, 2),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add some spacing between the login button and the create account text
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccountPage()),
                  );
                },
                child: Text(
                  'Create Account',
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
