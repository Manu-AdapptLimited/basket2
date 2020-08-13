import 'package:flutter/material.dart';

class Psc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
          child: Container(
        margin: EdgeInsets.only(top: 8, left: 8, bottom: 40),
        child: Text(
          '2 pcs',
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
