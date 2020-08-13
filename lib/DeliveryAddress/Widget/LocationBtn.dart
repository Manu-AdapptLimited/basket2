import 'package:flutter/material.dart';

class LocationBtn extends StatefulWidget {
  @override
  _LocationBtnState createState() => _LocationBtnState();
}

class _LocationBtnState extends State<LocationBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400],
        ),
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      margin: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.location_searching, size: 17, color: Colors.black54),
          label: Text(
            'Choose current location',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          )),
    );
  }
}
