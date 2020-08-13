import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: Container(
        height: 35,
        width: 100,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          children: <Widget>[
            Container(
              height: 35,
              width: 30,
              child: Icon(Icons.add),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                  color: Colors.grey[300]),
            ),
            Container(
              alignment: Alignment.center,
              height: 35,
              width: 40,
              child: Text('1'),
              decoration: BoxDecoration(color: Colors.grey[300]),
            ),
            Container(
                height: 35,
                width: 30,
                child: Icon(Icons.remove),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                    color: Colors.grey[300]))
          ],
        ),
      ),
    );
  }
}
