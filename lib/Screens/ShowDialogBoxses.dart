import 'package:flutter/material.dart';

class ShowDialogBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        insetPadding: EdgeInsets.only(left: 10, right: 10),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: 438,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Color.fromRGBO(104, 159, 57, 0.9),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            alignment: Alignment.center,
                            child: Text(
                              'Your last order feedback',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 5,
                              right: 5,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border(
                                   
                                    left: BorderSide(
                             color: Colors.black54,
                              width: 1.0,
                              // style: BorderStyle.solid,
                            ))),
                            child: Text(
                              'Need help?',
                              style: TextStyle(
                                  // color: Colors.black54,
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold),
                            ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      color: Colors.grey[100],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text('Order #: DXMPO-133863704-020820'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'Delivery on: 03 Aug 2020 12:16 PM',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text('Rs 1028'),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text('17 Item(s)'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'Rate your overall experiance',
                              style: TextStyle(
                                  // color: Colors.black54,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/1.jpeg'),
                                    backgroundColor: Colors.grey[400]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Rate the deliver person',
                                    style: TextStyle(
                                        // color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                                Icon(Icons.star_border,
                                    size: 40, color: Colors.black45),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 40,
                            child: TextField(
                              autofocus: false,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Comments(Optional)',
                                  hintStyle: TextStyle(fontSize: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 38,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 28,
                      child: RaisedButton(
                        color: Colors.grey[300],
                        onPressed: () {},
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: RaisedButton(
                        color: Colors.grey[300],
                        onPressed: () {},
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
