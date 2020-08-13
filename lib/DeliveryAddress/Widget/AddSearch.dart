import 'package:flutter/material.dart';

class AddSearch extends StatefulWidget {
  @override
  _AddSearchState createState() => _AddSearchState();
}

class _AddSearchState extends State<AddSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      margin: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 5),
      child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 14),
            enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[50]),
        borderRadius: BorderRadius.all(Radius.circular(3))),
            focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[100]),
        borderRadius: BorderRadius.all(Radius.circular(3))),
            prefixIcon: Icon(
      Icons.search,
      size: 20.0,
            ),
            hintText: 'Search for area, landmark or apartment',
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
    );
  }
}
