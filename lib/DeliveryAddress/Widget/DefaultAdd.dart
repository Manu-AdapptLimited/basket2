import 'package:flutter/material.dart';

class DefaultAdd extends StatefulWidget {
  @override
  _DefaultAddState createState() => _DefaultAddState();
}

class _DefaultAddState extends State<DefaultAdd> {
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
      margin: EdgeInsets.only(bottom: 4),
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
                              text: 'Defalt Address: ',
                              style: TextStyle(
                                color: Colors.red[400],
                                fontSize: 16,
                              ),
                              children: [
                            TextSpan(
                              text: 'Rash',
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
          texts('Rasmi Phatak'),
          texts('Flat Nbr 1205, Tower 1B, TRINITY TOWERS,'),
          texts('GERA GREENVILLE'),
          texts('GRANT ROAD'),
          texts('BEHIND EON IT PARK'),
          texts('Kharadi, Pune - 411014'),
          texts('Ph: 8437850895'),

        ],
      ),
    );
  }
}

Widget texts(text) {
  return Padding(
    padding: const EdgeInsets.only(left: 49),
    child: Text(text,style: TextStyle(
      color: Colors.black54,
      fontSize: 15
    ),),
  );
}
