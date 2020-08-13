import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 50,
      right: 50,
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        child: RaisedButton(
          color: Colors.red[300],
          onPressed: () {},
          child: Text(
            'ADD',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
