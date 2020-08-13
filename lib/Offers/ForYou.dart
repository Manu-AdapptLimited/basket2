
import 'package:flutter/material.dart';

import 'Widget/IemBuilder.dart';

class ForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)
      ]),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
            child: Column(
              children: <Widget>[
                Text(
                  'Offers For You',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Handpicked Offers Only For You')
              ],
            ),
          ),
          ItemBuilder(),
        ],
      ),
    );
  }
}
