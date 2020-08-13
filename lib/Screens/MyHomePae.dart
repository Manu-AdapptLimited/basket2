
import 'package:flutter/material.dart';

import 'ShowDialogBoxses.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ShowDialog'),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
              return ShowDialogBoxes();
            }));
          },
          child: Text('clich here to show dialog'),
        ),
      ),
    );
  }
}
