import 'package:flutter/material.dart';


class HomeAdd extends StatefulWidget {
  @override
  _HomeAddState createState() => _HomeAddState();
}

class _HomeAddState extends State<HomeAdd> {
  var selectVal = 0;
  onChange(value) {
    setState(() {
      selectVal = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Radio(
                          activeColor: Colors.black,
                          focusColor: Color.fromRGBO(104, 159, 57, 0.9),
                          autofocus: true,
                          value: 1,
                          groupValue: selectVal,
                          onChanged: (value) {
                            onChange(value);
                          }),
                      RichText(
                          text: TextSpan(
                              text: '',
                              style: TextStyle(
                                color: Colors.red[400],
                                fontSize: 16,
                              ),
                              children: [
                            TextSpan(
                              text: 'home',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                              ),
                            )
                          ]))
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  child: Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(
                            Icons.mode_edit,
                            size: 22,
                            color: Colors.grey[500],
                          ),
                          onPressed: () {}),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.delete_outline,
                              size: 22,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          text('Rasmi Phatak'),
          text('qwe, eqw'),
          text('eqwe, Pune - 411014 '),
          // text('GRANT ROAD'),
          // text('BEHIND EON IT PARK'),
          // text('Kharadi, Pune - 411014'),
          text('Ph: 8437850895'),

        ],
      ),
    );
  }
}

Widget text(text) {
  return Padding(
    padding: const EdgeInsets.only(left: 49),
    child: Text(text,style: TextStyle(
      color: Colors.black54,
      fontSize: 15
    ),),
  );
}
