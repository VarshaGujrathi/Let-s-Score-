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
                   SizedBox(height: 10),
                  Text(
                    '3.Dodgeball ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text('●If a player is hit above the waist then it will be considered as not out.\n'
'●If a player gets hit in a neutral position then it will be considered as out.\n'
'●Players are not permitted to kick throw or step on the ball.\n'
'●Players may pass the ball to all players of the team.\n'
 '●Eliminated players must not interfere with or touch any balls while out.\n'
'●All the teams are expected to be at the venue 5 minutes before their scheduled match start.\n'
'●Match and fixture will start at the given scheduled time.\n'
'●At match start, any team not meeting the minimum player''s requirement (i.e. 5) will forfeit the match',
style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10),
                  Text(
                    '4.Chess ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text('●All the standard chess moves and rules must be known to the player.\n'
'●1st Day will be Swiss Rounds and on the basis of that 2nd Day Knockouts will be conducted.\n'
'●Minimum 5 Rounds will be conducted and qualifying criteria for Knockout will be 2.5 points out of 5.\n'
'●Rapid 10+0 (10 minutes with no increment) for all the rounds.\n'
'●Touch to move rule is applicable. ( if a player touches a piece it must be moved. In case of castling, he should touch the King first).\n'
'●Clock must be Pressed By the Playing hand.\n\n'


'● Game can be won :\n'
'By Checkmate.\n'
'If Opponent resigns.\n'
'If Opponent runs out of time.\n'
'If Opponent plays 2 illegal moves.\n\n'

'● Game can be Drawn :\n' 
'By Stalemate.\n'
'By Agreement.\n'
'If the player has Insufficient mating material and runs out of time / Both have insufficient material.',
style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10),
                      Text(
                    '5.Table Tennis ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)), 
                      Text('●All the games will be played with the official rules.\n'
	'●All the games will be knockout-based.\n'
	 '●All the participants are required to bring their own TT Bat.',
style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10),
                        Text(
                    '6.Carrom Doubles / Singles',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text( '●It does not matter which piece the striker hits first, and it does not matter if the striker hits no pieces.\n'
 '●If the striker pockets the Queen and/or one or more pieces of their own color, the player retrieves the striker and takes another strike.\n'
 '●If the player pockets no pieces or commits a foul, the turn finishes.\n'
 '●If the striker comes to rest under another piece, it should be removed with as little disturbance to the covering piece as possible.',
 style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10),
 Text(
                    '7.Badminton',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text('●The tournament will be a knockout tournament.\n'
'●Each match will have only one set of 15 points.\n'
'●Semi-Finals will have 3 sets of 15 points.\n'
'●The Final Match will have 3 sets of 21 points.\n'
'●Players should have their own badminton racket.\n'
'●Players should use proper gum sole sports shoes.',
 style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10,),
                       Text(
                    '8.Cricket',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text('●The tournament will be a single-elimination knockout tournament.\n'
'●Each team will have a roster of 7 players and 2 substitutes.\n'
'●Each inning will consist of 4 overs. The same may be reduced due to unforeseen circumstances like weather, etc.\n'
'●The exact schedule will be circulated to all in a WhatsApp group of captains of each team.\n'
 '●Fast bowling is not allowed. (SPEED TO BE JUDGED BY THE UMPIRE AND ONLY ONE WARNING MAY BE GIVEN AND THE BOWL WILL BE DECLARED DEAD).Fast bowl can be declared as no ball by the umpire after the warning.\n'
'●No bouncer will be allowed in any match and it will be considered as a Wide ball / No ball as per the call of the umpire. No sidearm is allowed.\n'
 '●In case the bowler change ends he needs to inform the umpire regarding the same or that bowl will be declared as no ball.\n'
'●Teams can change wicket keeper after the completion of any over. In case the team needs to change the wicket keeper, he needs to inform the umpire or else the first bowl of the over will be declared as no bowl.\n'
'●Abusive words are strictly not allowed. All need to maintain the decorum of the game or the team might be disqualified.\n'
'●The Umpire’s decision will be the final decision. No arguments will be tolerated against the umpire.\n'
'●The rival team shall be declared the winner if the team does not reach 15 mins prior to the scheduled time of their allotted match. No excuses will be tolerated for being late.\n'
'●No balls will not be  given a free hit.\n'
 '●For any field disputes, the decision taken by the field umpires will be final.\n'
'In case of a tie, the winner shall be declared on the basis of super over which will be a regular over.\n'
'●All decisions of the committee of the tournament shall be final and binding on all the participating members.\n'
'●The committee reserves the right to amend the rules at any point of time before/during the tournament in the spirit of the tournament.\n'
'●If the ball goes directly out of the box then its out.\n'
'●Every over needs a fresh bowler.\n'
'●If a team tries to create a riot, the team will be disqualified immediately.',

 style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10,),
                       Text(
                    '9.Track',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                      Text('●All players should be students of KJSIT , who are supposed to register for the event.\n'
'●Race timings and schedule will be shared on the Whatsapp group.\n'
'●All races will run in lanes. And for 100m and 200m, participants have to run within the given lane.\n'
'●Athletes leaving their lanes and interfering with another runner will be disqualified.\n'
'●All other rules of the game remain the same as standard rules.\n'
'●If a player or team is not reporting on time ,then heads have full authority to eliminate the respective player or team.\n'
'●Any disputes should be brought to the notice of the event heads.\n'
'●Refunds will not be provided under any circumstances.',
 style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,)),
                       SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
