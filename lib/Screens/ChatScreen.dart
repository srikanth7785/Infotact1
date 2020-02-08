import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/6.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Row(
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

            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 25.0),
              child: Text("Chats",style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: CircleAvatar(child: Text("C"),),
                title: Text("Alexa newton",style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold),),
                subtitle: Text("Red Lambo",style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.normal),),
              ),
            ),
            driverTile(),
            driverTile(),
            driverTile(),
            driverTile(),
            driverTile(),
          ],
        ),
      ),
    );
  }

  driverTile(){
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: CircleAvatar(child: Text("C"),),
        title: Text("Alexa newton",style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold),),
        subtitle: Text("Red Lambo",style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.normal),),
      ),
    );
  }

}
