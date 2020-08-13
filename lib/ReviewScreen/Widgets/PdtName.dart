import 'package:flutter/material.dart';

class PdtName extends StatelessWidget {
  final name;
  PdtName({this.name});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        width: 140,
        child: Text(
          name,
        ),
      ),
    );
  }
}
