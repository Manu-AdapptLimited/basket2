import 'package:flutter/material.dart';

class StarRatting extends StatelessWidget {
  final ratting;
  final rattingPeople;
  StarRatting({
    this.ratting,
    this.rattingPeople
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 8, bottom: 8),
      child: Row(
        children: <Widget>[
          Container(
            height: 20,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    ratting,
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 10,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '$rattingPeople Rattings',
              style: TextStyle(fontSize: 12.0, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
