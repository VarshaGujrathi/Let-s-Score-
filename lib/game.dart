import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key});

  Future<void> openAppWebView(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Adjust the height as needed to shift everything up
              const Text(
                'Register Now !',
                style: TextStyle(color: Colors.white, fontSize: 37, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20), // Add space between the text and buttons
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Volleyball'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Football'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Cricket'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Throwball'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Chess'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Table Tennis'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Track'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Dodgeball'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Carrom'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  openAppWebView('https://forms.gle/X4xvEx5jBGEXApFF8');
                },
                child: const Text('Badminton'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 251, 193, 2),
                  fixedSize: const Size(200, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
