import 'package:flutter/material.dart';

class CounterBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 30,
      right: 30,
          child: Container(
        height: 30,
        width: 100,
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  offset: Offset(0, 2)
                  ),
                 
              ]
              ),
        child: Row(
          children: <Widget>[
            Container(
              height: 35,
              width: 30,
              child: Icon(Icons.add),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    bottomLeft: Radius.circular(3.0),
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
                      topRight: Radius.circular(3.0),
                      bottomRight: Radius.circular(3.0),
                    ),
                    color: Colors.grey[300]))
          ],
        ),
      ),
    );
  }
}
