import 'package:flutter/material.dart';

class TextSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 46,
            margin: EdgeInsets.only(
              bottom: 10,
              left: 10,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 14),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[50]),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[100]),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20.0,
                ),
                hintText: 'Type to search product',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        Container(
            height: 46,
            margin: EdgeInsets.only(
              bottom: 10,
            ),
            alignment: Alignment.center,
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                )))
      ],
    );
  }
}
