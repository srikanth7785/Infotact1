import 'package:flutter/material.dart';

import 'dropdown.dart';

class Sorting extends StatefulWidget {
  @override
  _SortingState createState() => _SortingState();
}

class _SortingState extends State<Sorting> {

     List<String> _locations = ['Low-High', 'High-Low'];

  String _selectedlocation = 'choose';

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                color: Colors.grey[300], borderRadius: BorderRadius.circular(10.0)),
            height: MediaQuery.of(context).size.height / 14,
            width: MediaQuery.of(context).size.width / 1.3,
            child: ListView(
              scrollDirection:Axis.horizontal,
              children: <Widget>[
              
                 Padding(
                   padding: const EdgeInsets.only(top:14.0),
                   child: Text("prize: ",style: TextStyle(fontSize: 8)),
                 ),
                 Dropdown(),
               Padding(
                 padding: const EdgeInsets.only(top:14.0),
                 child: Text("Car Type: ",style: TextStyle(fontSize: 8),),
               ),
                    Dropdown(),
                Padding(
                  padding: const EdgeInsets.only(top:14.0),
                  child: Text("Location: ",style: TextStyle(fontSize: 8)),
                ),
                Dropdown(),
              
              
              
           ]
//             Container(
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
// ),

),
          );
  }
}