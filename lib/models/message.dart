import 'package:flutter/cupertino.dart';

import '../user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});
  //fake data, will fetch from a DB later
  static List<Message> generateHomePageMessages() {
    return [
      Message(
          users[0], 'Hey there!, What\'s up? Is everything good?', '9:31 AM'),
      Message(users[1], 'I heard you are moving out is that true?', '4:12'),
      Message(users[2], 'Sent an attachment.', 'yesterday'),
      Message(users[3], 'Sent 3 photos', 'sunday'),
      
    ];
  }

  static List<Message> generateMessagesFromUsers() {
    return [
      Message(users[0],  'can i call you back? i\'m at work right now', '9:31 AM'),
      Message(
        me,
         'Nothig, just chilling watching YouTube Videos ',
          '9:31'
          ),
      Message(
        users[0],
         'same here! Been watching YouTube for the past 5 hours!',
          '9:32'
          ),
      Message(
        me, 
        'It\'s hard being productive, man 🙄', 
        '9:32'
        ),
      Message(
        users[0],
         'Yeah i know,I\'m in the same position 😂',
          '9:32'
          ), 
      Message(
        me, 
        'lol', 
        '9:32'
        ),         
    ];
  }
}

var users = User.generateUsers();
var me = User(5, 'Omar', 'seif', 'assets/user6.png', Color(0xFFFFFF));
