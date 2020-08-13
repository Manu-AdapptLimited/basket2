import 'package:flutter/material.dart';

class DateDis extends StatelessWidget {
  final date;
  DateDis({
    this.date,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Container(
        height: 30,
        width: 125,
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.date_range,
              color: Colors.black54,
            ),
            Text(
              '\On $date',
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
