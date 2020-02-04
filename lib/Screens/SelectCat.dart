import 'package:flutter/material.dart';
import 'package:sample_project/Screens/SelectCar.dart';
import 'package:sample_project/Screens/curved_navigation_bar.dart';

class SelectCat extends StatefulWidget {
  @override
  _SelectCatState createState() => _SelectCatState();
}

class _SelectCatState extends State<SelectCat> {
  navigateToSelectCar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectCar()));
  }

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
      ),
      ),
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
          offset: Offset(0.0, 90.0),
          child: new Container(
            // decoration: BoxDecoration(
            //     color: const Color(0xff8BD2C4),
            //     image: DecorationImage(
            //       fit: BoxFit.cover,
            //       colorFilter: new ColorFilter.mode(
            //           Colors.black.withOpacity(0.5), BlendMode.dstATop),
            //       image: NetworkImage(
            //         "https://i.pinimg.com/originals/81/89/a4/8189a4e33db914e6c9f791b716e7362d.jpg",
            //       ),
            //     )),
            height: MediaQuery.of(context).size.height / 2.3,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    navigateToSelectCar();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                                     color: Colors.grey[100],

                        borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Center(
                      child: Text("Place"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
    final selectCar = Transform.translate(
      offset: Offset(0.0, -30.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1.3,
          child: Column(
            children: <Widget>[
               Container(
                 alignment:Alignment.centerLeft,
                 child: Padding(
                   padding: const EdgeInsets.only(left:15.0,top: 10),
                   child: Text(
                     "Select Car Type",
                     style: TextStyle(fontWeight: FontWeight.bold),
                   ),
                 ),
               ),
              Container(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                   
                    Card(
                      elevation: 0.0,
              color: Colors.grey[100],
                      child: ListTile(
                        leading: CircleAvatar(radius: 5,backgroundColor: Colors.indigo[900],),
                      title: Text("Economy",style: TextStyle(fontSize: 14),),
                          trailing: Image.network(
                              "https://www.freepngimg.com/thumb/car/4-2-car-png-hd.png")),
                    ),
                    Card(
                      elevation: 0.0,
              color: Colors.grey[100],
                      child: ListTile(
                        leading: CircleAvatar(radius: 5,backgroundColor: Colors.indigo[900],),
                        title: Text("Prime",style: TextStyle(fontSize: 14),),
                        trailing: Image.network(
                            "http://pngimagesfree.com/Car/hyundai/hyundai_Car_PNG.png"),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
              color: Colors.grey[100],
                      child: ListTile(
                        leading: CircleAvatar(radius: 5,backgroundColor: Colors.indigo[900],),
                        title: Text("XL",style: TextStyle(fontSize: 14),),
                        trailing: Image.network(
                            "http://pngimg.com/uploads/acura/acura_PNG129.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    final budget = Align(
      alignment: Alignment.center,
      child: Transform.translate(
        offset: Offset(0.0, 120.0),
        child: Container(
          decoration: BoxDecoration(
                           color: Colors.grey[100],
 borderRadius: BorderRadius.circular(10.0)),
          height: MediaQuery.of(context).size.height / 14,
          width: MediaQuery.of(context).size.width / 1.3,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text("Budget"), Text("\$15.00")],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
color:  Color(0xff01346C), 

    //     backgroundColor: 
    // Colors:[

    //       Color(0xff01838F),
    //       Color(0xff01346C),
    //     ],
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
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff01346C),
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
          selectCar,
          budget,
        ],
      ),
    );
  }
}
