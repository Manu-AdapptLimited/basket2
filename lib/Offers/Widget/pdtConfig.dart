
import 'package:flutter/material.dart';

import 'AddButton.dart';
import 'CounterButton.dart';
import 'DateDis.dart';
import 'DropDownItem.dart';
import 'OfferBanner.dart';
import 'StarRatting.dart';

// ignore: must_be_immutable
class PdtConfig extends StatelessWidget {
  final image;
  final name;
  final newName;
  final oldPrice;
  final newPrice;
  final offer;
  bool isTapped;
  final date;
  final ratting;
  final rattingPeople;
  bool isInKg;
  final quant;
  PdtConfig({
    this.image,
    this.name,
    this.newName,
    this.oldPrice,
    this.newPrice,
    this.offer,
    this.date,
    this.ratting,
    this.rattingPeople,
    this.isTapped,
    this.isInKg,
    this.quant
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            child: Container(
              height: 120,
              width: 125,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          OfferBanner(offer: offer,),
          DateDis(date: date,),
          Positioned(
            right: 0,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 156,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      newName,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

               isInKg==true ? Container(
                    margin: EdgeInsets.only(left: 8,top: 30,bottom: 30),
                    child: Text('$quant kg',style: TextStyle(
                              color: Colors.black54,
                            ),),
                  ):  Column(
                    children: <Widget>[
                      StarRatting(rattingPeople: rattingPeople,ratting: ratting ,),
                      DropDownItem(),
                    ],
                  ),
               
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15),
                    child: RichText(
                        text: TextSpan(
                            text: 'MRP: ',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            children: [
                          TextSpan(
                            text: oldPrice,
                            style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Text(
                      '\Rs $newPrice',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),

          isTapped==true ?  CounterButton() :  AddButton(),
          
        
        ],
      ),
    );
  }
}
