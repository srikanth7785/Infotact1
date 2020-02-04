import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample_project/Screens/HomePage.dart';

import 'home.dart';

class CheckLogin extends StatefulWidget {
  @override
  _CheckLoginState createState() => _CheckLoginState();
}

class _CheckLoginState extends State<CheckLogin> {
  navigateToHome() {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => HomePage()));

     Navigator.push(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [
        //     Color(0xff001F34),
        //     Color(0xff066150),
        //   ],
        //   //  stops: [0.2,0.4,0.6,0.9]
        // ),
        image: DecorationImage(
          image: AssetImage("assets/3.png"),
          fit: BoxFit.fill,
        ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Your Pofile Has",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      )),
                  Align(
                      child: Text(
                    "been Created",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  )),
                  Align(
                      child: Text(
                    "Successfully",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.sentiment_satisfied,
                      color: Colors.white,
                      size: 100.0,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white,
                child: Text("Home",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                onPressed: () {
                  navigateToHome();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
