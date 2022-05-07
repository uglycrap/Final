import 'dart:ui';
import 'package:application/chat%20theme/detail.dart';
import 'package:flutter/cupertino.dart';

import 'models/message.dart';
import 'package:application/constants/colors.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final messagesList = Message.generateHomePageMessages();

  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 60,
              width: 4,
            ),
        itemCount: messagesList.length);
  }

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Detailpage(messagesList[index])));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: messagesList[index].user.bgColor,
                    shape: BoxShape.circle)
                    ,
                child: Image.asset(
                  messagesList[index].user.iconUrl,
                  width: 50,
                )),
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${messagesList[index].user.firstName}${messagesList[index].user.lastName}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'bahnschrift'),
                      ),
                      Text(
                        messagesList[index].lastTime,
                        style: TextStyle(color: kGreyLight),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                    width: 50,
                  ),
                  Text(
                    messagesList[index].lastMessage,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: kPrimaryBlue),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
