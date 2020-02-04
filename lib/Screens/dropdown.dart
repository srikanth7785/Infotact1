import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

     List<String> _locations = ['Low-High', 'High-Low'];

  String _selectedlocation = 'choose';
  @override
  Widget build(BuildContext context) {
    return Container(
              child: DropdownButton(
                underline: Container(),
                hint: Text(
                  _selectedlocation,
                  style: TextStyle(color: Colors.white,fontSize: 8),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedlocation = newValue;
                  });
                },
                items: _locations.map((String location) {
                  return new DropdownMenuItem<String>(
                    child: new Text(location,style: TextStyle(fontSize: 8),),
                    value: location,
                  );
                }).toList(),
              ),
);
  }
}