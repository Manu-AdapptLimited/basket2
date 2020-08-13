
import 'package:flutter/material.dart';
import 'Widgets.dart';

class AddContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: Colors.grey[300],
        margin: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.only(
                left: 10,
              ),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SAVED ADDRESS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38)),
                  FlatButton(
                    padding: EdgeInsets.only(right: 10),
                    onPressed: () {},
                    child: Text('+ADD NEW ADDRESS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[400])),
                  )
                ],
              ),
            ),
            
            DefaultAdd(),
            
            HomeAdd()

          ],
        ),
      ),
    );
  }
}
