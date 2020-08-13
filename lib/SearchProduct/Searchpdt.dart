import 'package:flutter/material.dart';

import 'HistoryContainer.dart';
import 'TextSearch.dart';

class SearchPdt extends StatelessWidget {
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
        title: Text('Search Product',
            style: TextStyle(
              fontSize: 18,
            )),
        actions: <Widget>[IconButton(icon: Icon(Icons.menu), onPressed: () {})],
        bottom: PreferredSize(
            child: TextSearch(), preferredSize: Size.fromHeight(55)),
      ),
      body: HistoryContainer(),
    );
  }
}
