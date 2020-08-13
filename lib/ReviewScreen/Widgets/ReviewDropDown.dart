import 'package:flutter/material.dart';

class ReviewDropDown extends StatefulWidget {
  @override
  _ReviewDropDownState createState() => _ReviewDropDownState();
}

class _ReviewDropDownState extends State<ReviewDropDown> {
  String _quantityVal;
  List _quantity = ['250 g ', '500 g ', '750 g ', '1 kg ','5 kg'];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 8),
    height: 30,
    width: 135,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.all(Radius.circular(3))),
    child: DropdownButton(
        value: _quantityVal,
        hint: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text('Slect Quantity'),
        ),
        isExpanded: true,
        items: _quantity.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _quantityVal = value;
          });
        }),
        ),
      );
  }
}
