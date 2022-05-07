import 'package:application/chat%20theme/contact_info.dart';
import 'package:application/chat%20theme/detail_app_bar.dart';
import 'package:application/chat%20theme/detail_message.dart';
import 'package:application/constants/colors.dart';
import 'package:application/models/message.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final Message message;
  Detailpage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(children: [
        DetailAppbBar(),
        ContactInfo(message),
        Expanded(child:  DetailMessages())
      ]),
    );
     
  }
}

