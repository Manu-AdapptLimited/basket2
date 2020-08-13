import 'package:flutter/material.dart';

import 'Empty.dart';
import 'SavedForLater.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(104, 159, 57, 0.9),
        leading: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.arrow_back_ios),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          'Review Basket',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 560,
          child: Column(
            children: [Empty(), SizedBox(height: 10), SavedForLater()],
          ),
        ),
      ),
    );
  }
}
