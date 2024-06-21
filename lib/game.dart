import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Register Now!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              buildButton('Volleyball', 'https://forms.gle/D1XvKn5tNBL9mjiF8'),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String label, [String? url]) {
    return Container(
      height: 50,
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (url != null) {
            _launchURL(url);
          } else {
            // Handle logic for buttons without URLs
            print('Button "$label" pressed without URL');
          }
        },
        child: Text(label, style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 251, 193, 2),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
}

}
