import 'package:application/constants/colors.dart';
import 'package:application/quiz/mainQuestions.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class icons extends StatefulWidget {
  const icons({Key? key}) : super(key: key);

  @override
  State<icons> createState() => _iconsState();
}

class _iconsState extends State<icons> {
  List<String> events = ['Depression', 'Anexity', 'Addiction', 'Insomnia'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Color(0xFF6CD8D1),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Screenshot_2.png'),
                    fit: BoxFit.fill)),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 100,
                ),
                Container(
                  padding: EdgeInsets.only(right: 25),
                  height: MediaQuery.of(context).size.height - 50,
                  width: MediaQuery.of(context).size.width - 20,
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      _buildCard('Depression', 'assets/user1.png', context),
                      _buildCard('Anexity', 'assets/user2.png', context),
                      _buildCard('Addiction', 'assets/user3.png', context),
                      _buildCard('Insomnia', 'assets/user4.png', context),
                    ],
                  ),
                )
              ],
            )));
  }

  Widget _buildCard(String name, String imgPath, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, right: 5, left: 5),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GAMElol()));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5)
              ],
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Container(
                    height: 130,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'bahnschrift',
                      fontSize: 20),
                )
              ],
            ),
          )),
    );
  }
}
