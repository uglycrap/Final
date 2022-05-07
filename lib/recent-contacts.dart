import 'package:application/user.dart';
import 'package:flutter/material.dart';
import 'user.dart';

class RecentContact extends StatelessWidget {

  final contactList = User.generateUsers();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.only(left: 25),
       height: 50,
       child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              color:Colors.white.withOpacity(0.2),
              shape: BoxShape.circle
            ),
            child: Icon(Icons.search,size: 20,
            color: Colors.white,
            ),
          ),
          Expanded(
            child: 
          ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => 
          Container(
            
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(color: contactList[index].bgColor,
            shape: BoxShape.circle),
            child: Image.asset(
              contactList[index].iconUrl
              ),
              
          ),
           separatorBuilder: (_,index) => const SizedBox(width: 40),
           itemCount: contactList.length),
          )
        ],),
      
    );
  }
}

