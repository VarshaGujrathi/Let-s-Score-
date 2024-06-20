import 'package:flutter/material.dart';

class RulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Rule Book', style: TextStyle(color: Colors.black)),
      ),
      body: Stack(
        children: [
          // Centered background image with a slight upward shift
          Center(
            child: Transform.translate(
              offset: Offset(0, -50), // Adjust the second value to shift the image up
              child: Opacity(
                opacity: 0.4, // Set the desired opacity for transparency
                child: Image.asset(
                  'assets/login.jpg',
                  fit: BoxFit.cover, // Ensure the image covers the available space
                ),
              ),
            ),
          ),
          // Positioned text at the top left side
          Positioned(
            top: 16.0, // Adjust the top value as needed
            left: 16.0, // Adjust the left value as needed
            right: 16.0, // Add right padding for better readability
            bottom: 16.0, // Add bottom padding for better readability
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Football',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10), // Add some space between the title and the content
                  Text(
                    '● All games will be officiated as per the FIFA Laws of the Game 22/23.\n'
                    '● A toss will be held before the game to decide the side and start.\n'
                    '● Each half is 20 minutes and the break in between the two halves is 10 minutes.\n'
                    '● Extra time will be awarded by the referee if needed.\n'
                    '● A league format is going to be followed, wherein each team plays the other teams twice during\n'
                    '  the group stage.\n'
                    '● The top 2 teams after the group stage will face each other in the final of the tournament.\n'
                    '● Win- +3 points. Draw- +1 point. Loss- 0 points.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Throwball',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '● The service should be done from the service area only.\n'
                    '● Both the teams must throw the ball to their opposite team and the opposite team must catch the ball without dropping it.\n'
                    '● The players must catch the ball using both hands and throw the ball using one hand.\n'
                    '● During the game the players may move freely within their field. However, during service, they must keep their initial positions.\n'
                    '● The player is not allowed to jump while throwing or catching the ball.\n'
                    '● The team gets points if the opposite team fails to catch the ball or commits a foul.\n'
                    '● The ball itself may however touch the net when being delivered to the other side - if it lands in the opponents’ field it is not considered as a foul.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
