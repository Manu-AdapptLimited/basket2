import 'package:flutter/material.dart';

class DropDownItem extends StatefulWidget {
  @override
  _DropDownItemState createState() => _DropDownItemState();
}

class _DropDownItemState extends State<DropDownItem> {
  String _quantityVal;

  List _quantity = [
    '250 ml - Bottel',
    '500 ml - Bottel',
    '750 ml - Bottel',
    '1000 ml - Bottel'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8),
      child: DropdownButtonHideUnderline(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 25),
          padding: EdgeInsets.only(left: 5),
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black45),
              borderRadius: BorderRadius.all(Radius.circular(5))),
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
      ),
    );
  }
}
