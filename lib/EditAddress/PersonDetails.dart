import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
      ),
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 8, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Name: Rashmi Phatak',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Text(
                  'phone number: 8437850895',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black45,
                  ),
                  onPressed: () {})),
        ],
      ),
    );
  }
}
