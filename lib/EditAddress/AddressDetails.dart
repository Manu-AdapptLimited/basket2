
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  TextEditingController _controller = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Text(
              'Address Detailse',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 50,
                    child: TextField(
                        strutStyle: StrutStyle(),
                        decoration: new InputDecoration(
                          labelStyle: TextStyle(height: 0.2),
                          labelText: '* House no',
                        )),
                  )),
              Expanded(
                flex: 15,
                child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          labelStyle: TextStyle(height: 0.2),
                          labelText: 'Apartment name'),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Street details to locate you'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Landmark for easy to reach out',
                  )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    height: 50,
                    child: TextField(
                        strutStyle: StrutStyle(),
                        decoration: new InputDecoration(
                          labelStyle: TextStyle(height: 0.2),
                          labelText: '* City',
                        )),
                  )),
              Expanded(
                flex: 10,
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          labelStyle: TextStyle(height: 0.2),
                          labelText: '* Pincode'),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Choose a NickName'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Wrap(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Text('Home'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Text('Office'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Text(
                    'Other',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'home',
                  )),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked=value;
                    });
                  }),
              Text('Set this as my default delivery address')
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
                color: Color.fromRGBO(74, 74, 74, 1),
                onPressed: () {},
                child: Text('UPDATE ADDRESS',style: TextStyle(
                  color: Colors.white
                ),)),
          )
        ],
      ),
    );
  }
}
