import 'package:flutter/material.dart';

class ImageCont extends StatelessWidget {
  final img;
  ImageCont({this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 160,
      child: Image.asset(
        img,
        fit: BoxFit.contain,
      ),
    );
  }
}
