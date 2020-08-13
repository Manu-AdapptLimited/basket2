import 'package:flutter/material.dart';

class OldPrice extends StatelessWidget {
  final oldPrice;
  OldPrice({this.oldPrice});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220,
          child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 15),
        child: RichText(
            text: TextSpan(
                text: 'MRP: ',
                style: TextStyle(
                  color: Colors.black54,
                ),
                children: [
              TextSpan(
                text: '\Rs $oldPrice',
                style: TextStyle(
                  color: Colors.black54,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ])),
      ),
    );
  }
}
