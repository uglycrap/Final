import 'package:application/SignUP.dart';
import 'package:application/SignIN.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Screenshot_1.png'),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Spacer(),
              Image.asset('assets/Untitled.png', height: 400, width: 300),
              Spacer(),
              Column(
                
                children: <Widget>[
                  SizedBox(
                    height: 10,
                    width: 50
                  ),
                  
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: Color(0xFF6CD8D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(300)),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(height: 10, ),
                  
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 45,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
