import 'package:flutter/material.dart';
import 'package:sample_project/Screens/SelectCat.dart';
import 'package:sample_project/Screens/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    navigateToSelcat() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SelectCat()));
    }

    final profile = Container(
      height: MediaQuery.of(context).size.height / 2.7,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff01838F),
          Color(0xff01346C),
        ],
        // stops: [0.4,0.0]
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              padding: const EdgeInsets.only(top: 38.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.0)),
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Image.network(
                    "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
    final places = Align(
        alignment: Alignment.center,
        child: Transform.translate(
          offset: Offset(0.0, -65.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 1.3,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.location_on),
                      // border:InputBorder.none,
                      hintText: "Leaving from",
                      contentPadding: EdgeInsets.all(10.0)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.location_on),
                      border: InputBorder.none,
                      hintText: "Going to",
                      contentPadding: EdgeInsets.all(10.0)),
                )
              ],
            ),
          ),
        ));
    final map = Align(
        alignment: Alignment.center,
        child: Transform.translate(
          offset: Offset(0.0, 0.0),
          child: new Container(
            height: MediaQuery.of(context).size.height / 2.3,
            child: Image.network(
              "https://2.bp.blogspot.com/-rAvZDK7KWWU/W4GIDCyrHTI/AAAAAAAAAFI/cn250kQYsD8_u8P-6FkrBixQ3QZ4ApsxACLcBGAs/s320/route_google_map.png",
              fit: BoxFit.cover,
            ),
          ),
        ));
    final deliver = Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Delivery"),
                  textColor: Colors.white,
                  color: Color(0xff02285D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {},
                ),
                RaisedButton(
                  color: Colors.white,
                  child: Text("Cab"),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xff02285D)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    navigateToSelcat();
                  },
                )
              ],
            )));

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
                        color: const Color(0xff8BD2C4),

        index: 1,
        height: 75.0,
        items: <Widget>[
          Icon(Icons.chat),
          Icon(Icons.drive_eta),
          Icon(Icons.person)
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[profile, map, deliver],
          ),
          places,
        ],
      ),
    );
  }
}
