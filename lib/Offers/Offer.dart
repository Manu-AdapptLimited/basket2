
import 'package:flutter/material.dart';

import 'Banner.dart';
import 'ForYou.dart';


class Offer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
     appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {}),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(104, 159, 57, 0.9),
        title: Text('Offers',
            style: TextStyle(
              fontSize: 18,
            )),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,size: 30,), onPressed: () {})
        ],),

        body: Column(
          children: <Widget>[
           BannerPic(),
           SizedBox(height: 10,),
           Expanded(child: ForYou())
          ],
        ),
      
    );
  }
}