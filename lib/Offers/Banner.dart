import 'package:flutter/material.dart';

class BannerPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25 + 10,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/2.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
