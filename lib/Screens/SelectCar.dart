import 'package:flutter/material.dart';
import 'package:sample_project/Screens/curved_navigation_bar.dart';
import 'package:sample_project/Screens/sorting.dart';

class SelectCar extends StatefulWidget {
  @override
  _SelectCarState createState() => _SelectCarState();
}

class _SelectCarState extends State<SelectCar> {
 
  @override
  Widget build(BuildContext context) {
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
    final backImage = Align(
        alignment: Alignment.center,
        child: Transform.translate(
          offset: Offset(0.0, 150.0),
          child: new Container(
            decoration: BoxDecoration(
                color: const Color(0xff8BD2C4),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: NetworkImage(
                    "https://i.pinimg.com/originals/81/89/a4/8189a4e33db914e6c9f791b716e7362d.jpg",
                  ),
                )),
            height: MediaQuery.of(context).size.height / 1.8,
          ),
        ));

    final sort = Positioned(
       top: MediaQuery.of(context).size.height / 2.7-20,
       left:20 ,
       right: 20,
        child: Align(
          alignment: Alignment.center,
          child: Sorting()
          
          
          
          
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.grey[300], borderRadius: BorderRadius.circular(10.0)),
//             height: MediaQuery.of(context).size.height / 14,
//             width: MediaQuery.of(context).size.width / 1.3,
//             child: Center(child: Container(
//               child: DropdownButton(
//                 underline: Container(),
//                 hint: Text(
//                   _selectedlocation,
//                   style: TextStyle(color: Colors.white,fontSize: 10),
//                 ),
//                 onChanged: (newValue) {
//                   setState(() {
//                     _selectedlocation = newValue;
//                   });
//                 },
//                 items: _locations.map((String location) {
//                   return new DropdownMenuItem<String>(
//                     child: new Text(location,style: TextStyle(fontSize: 10),),
//                     value: location,
//                   );
//                 }).toList(),
//               ),
// ),),
//           ),
        ));

    final selectDriver = Center(
        child: Transform.translate(
      offset: Offset(0.0, 150.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.1,
        // color: Colors.green,
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (snapshot, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  // width: MediaQuery.of(context).size.width ,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.grey[300],
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  "https://images.statusfacebook.com/profile_pictures/Beautiful/Beautiful_Profile_Picture04.jpg"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Driver Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo[900]),
                                ),
                                Text("Car Model")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text("\$15",
                                style: TextStyle(
                                  color: Colors.indigo[900],
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
                              width: MediaQuery.of(context).size.width / 8.2,
                              height: MediaQuery.of(context).size.height,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff01346C),
                                    Color(0xff01838F),
                                  ],
                                  // stops: [0.4,0.0]
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0))),
                            width: MediaQuery.of(context).size.width / 9,
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                                child: Text(
                              "accept",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            )),
                          )
                        ],
                      ))),
            );
          },
        ),
      ),
    ));
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 75.0,
        items: <Widget>[
          Icon(Icons.chat),
          Icon(Icons.drive_eta),
          Icon(Icons.person)
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff8BD2C4),
                                

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/81/89/a4/8189a4e33db914e6c9f791b716e7362d.jpg",
                    ),
                  )),
            ),
            profile,
            backImage,
            sort,
            selectDriver
          ],
        ),
      ),
    );
  }
}
