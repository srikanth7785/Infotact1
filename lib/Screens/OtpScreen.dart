import 'package:flutter/material.dart';
import 'package:sample_project/Screens/CheckLogin.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  navigateToCheck() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CheckLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/2.png",),
            fit: BoxFit.values[5],
          ),
        //     gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [
        //     Color(0xff001F34),
        //     Color(0xff066150),
        //   ],
        //   //  stops: [0.2,0.4,0.6,0.9]
        // ),
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
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Create Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("Enter Verification Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("Enter the 6-digit code sent to you at",
                    style: TextStyle(color: Colors.white, fontSize: 11.5)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "O T P N U M",
                    hintStyle:
                        TextStyle(color: Colors.white38, letterSpacing: 9.0),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.white,
                child: Text("Verify",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                onPressed: () {
                  navigateToCheck();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
