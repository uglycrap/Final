// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(this.id, this.firstName, this.lastName,this.iconUrl, this.bgColor);


  static List<User> generateUsers () {
    return [
      User(1, '  Depression\t', 'Room', 'assets/user1.png',
        Color(0xFFFDBEC8)),
      User(2,'  Anexity ','Room', 'assets/user2.png',
        Color(0xFFFED6C4)),
      User(3,'  Addiction',' Room', 'assets/user3.png',   
        Color(0xFFFDBEC8)),
      User(4,'   Insomina',' Room', 'assets/user4.png',
        Color(0xFFFFE5A7)),
      
    ];
  }

}