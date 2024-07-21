import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'option.dart'; // Import the option.dart file

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _createAccount() async {
    try {
      // Check if passwords match
      if (_passwordController.text != _confirmPasswordController.text) {
        throw Exception('Passwords do not match');
      }

      // Create user with email and password
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Store additional user data in Firestore
      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'username': _usernameController.text,
        'email': _emailController.text,
        // Add more fields as needed
      });

      // Navigate to OptionPage after successful registration
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OptionPage()),
      );
    } catch (e) {
      // Handle registration errors
      print('Failed to create user: $e');
      // Show error dialog or message
    }
  }

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
              buildTextFieldWithIcon(Icons.person, 'Username', controller: _usernameController),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.email, 'Email', controller: _emailController),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.lock, 'Password', obscureText: true, controller: _passwordController),
              SizedBox(height: 10),
              buildTextFieldWithIcon(Icons.lock, 'Confirm Password', obscureText: true, controller: _confirmPasswordController),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _createAccount,
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

  Widget buildTextFieldWithIcon(IconData icon, String label,
      {bool obscureText = false, TextEditingController? controller}) {
    return TextField(
      controller: controller,
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