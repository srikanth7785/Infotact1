import 'package:flutter/material.dart';
import 'package:sample_project/Screens/OtpScreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  navigateTootp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [
          //   Color(0xff4D4A8F),
          //   Color(0xffC2727B),
          //   Color(0xff153230),
          //   Color(0xff08AE88)
          // ],
          //     stops: [
          //   0.2,
          //   0.4,
          //   0.6,
          //   0.9
          // ])
          image: DecorationImage(
            image: AssetImage("assets/project sp.png"),
            fit: BoxFit.cover,
          ),
        ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          // color: Colors.white,
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text("Start Drive",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0))),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 80.0, right: 30.0, top: 30.0),
                child: TextFormField(
                  // textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter Your Mobile Number",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 30.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.grey,
                    child: Text("Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0)),
                    onPressed: () {
                      navigateTootp();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Are You Driver?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
