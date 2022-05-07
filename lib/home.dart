
import 'package:application/constants/colors.dart';
import 'package:application/message.dart';
import 'package:application/recent-contacts.dart';
import'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     body: Container(
       padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
          child: Text('Chats',
          style: TextStyle(
            fontFamily: 'bahnschrift',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35
          ),
          ),
          ),
          RecentContact(),
          Messages()
        ],
       ),
     ),
    );
  }
}