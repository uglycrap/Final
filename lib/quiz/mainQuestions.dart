// ignore_for_file: prefer_const_constructors

import 'package:application/chat%20theme/detail_message.dart';
import 'package:application/message.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import 'app_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AppBrain appBrain = AppBrain();

class GAMElol extends StatefulWidget {
  @override
  State<GAMElol> createState() => _GAMElolState();
}

class _GAMElolState extends State<GAMElol> {
  int rightAnswer = 0;
  void checkAnswer(bool whatUserPiched) {
    bool correctAnswer = appBrain.getQuestionAnswer();
    setState(() {
      if (whatUserPiched == correctAnswer) {
        rightAnswer++;
      }
      if (appBrain.isFinished() == true) {
        Alert(
          context: context,
          title:
              "If you answered false to some of the questions, and if these symptoms are having a negative impact on your usual routine or other important areas of your life, this could mean you’re facing some challenges.",
          desc: "You got $rightAnswer / 10 ",
          buttons: [
            DialogButton(
              child: Text(
                "Go To Chat Room",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              width: 190,
              height: 35,
            )
          ],
        ).show();

        appBrain.reset();
        rightAnswer = 0;
      } else {
        appBrain.nextQuestion();
      }
    });
  }

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Screenshot_2.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                DefaultTextStyle(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'bahnschrift'),
                  child: Text(
                    appBrain.getQuestionText(),
                  ),
                ),
                // Text(
                //   appBrain.getQuestionText(),
                //   style: TextStyle(
                //       color: Color.fromARGB(255, 238, 229, 229),
                //       fontSize: 25.0,
                //       fontWeight: FontWeight.w500),
                // ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0095FF),
                  minimumSize: Size(50, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                child: Text(
                  'Yes',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Color.fromARGB(255, 254, 255, 254),
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0095FF),
                  minimumSize: Size(50, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                child: Text(
                  'No',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'bahnschrift',
                      color: Color.fromARGB(255, 254, 255, 254),
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 189.0,
                ),
                DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                        fontFamily: 'bahnschrift'),
                    textAlign: TextAlign.center,
                    child: Text(
                        'Your privacy is important to us. All results are completely anonymous.'))
                // Text(
                //   'Your privacy is important to us. All results are completely anonymous.',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     color: Color.fromARGB(255, 255, 255, 255),
                //     fontSize: 15.0,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*class ExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 150, 180, 196),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
          )),
    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int rightAnswer = 0;
  void checkAnswer(bool whatUserPiched) {
    bool correctAnswer = appBrain.getQuestionAnswer();
    setState(() {
      if (whatUserPiched == correctAnswer) {
        rightAnswer++;
      }
      if (appBrain.isFinished() == true) {
        Alert(
          context: context,
          title:
              "If you answered false to some of the questions, and if these symptoms are having a negative impact on your usual routine or other important areas of your life, this could mean you’re facing some challenges.",
          desc: "You got $rightAnswer / 10 ",
          buttons: [
            DialogButton(
              child: Text(
                "chatroom",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
              height: 90,
            )
          ],
        ).show();

        appBrain.reset();
        rightAnswer = 0;
      } else {
        appBrain.nextQuestion();
      }
    });
  }

  get index => null;
  @override
  Widget build(BuildContext context) {
    var question;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              DefaultTextStyle(
                style: TextStyle(
                    color: Color.fromARGB(255, 238, 229, 229),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
                child: Text(
                  appBrain.getQuestionText(),
                ),
              ),
              // Text(
              //   appBrain.getQuestionText(),
              //   style: TextStyle(
              //       color: Color.fromARGB(255, 238, 229, 229),
              //       fontSize: 25.0,
              //       fontWeight: FontWeight.w500),
              // ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0095FF),
                minimumSize: Size(50, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              child: Text(
                'Yes',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color.fromARGB(255, 254, 255, 254),
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0095FF),
                minimumSize: Size(50, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              child: Text(
                'No',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color.fromARGB(255, 254, 255, 254),
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 189.0,
              ),
              DefaultTextStyle(
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15.0),
                  textAlign: TextAlign.center,
                  child: Text(
                      'Your privacy is important to us. All results are completely anonymous.'))
              // Text(
              //   'Your privacy is important to us. All results are completely anonymous.',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Color.fromARGB(255, 255, 255, 255),
              //     fontSize: 15.0,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
*/