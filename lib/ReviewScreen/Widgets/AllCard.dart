import 'package:flutter/material.dart';

import 'AddBtn.dart';
import 'CounterBtn.dart';
import 'DisCountBanner.dart';
import 'ImageCon.dart';
import 'NewPrice.dart';
import 'OldPrice.dart';
import 'PdtName.dart';
import 'Psc.dart';
import 'ReviewDropDown.dart';
import 'StarReview.dart';

// ignore: must_be_immutable
class AllCard extends StatelessWidget {
  final image;
  final name;

  final oldPrice;
  final newPrice;
  final offer;
  bool isTapped;
  final date;
  final ratting;
  final rattingPeople;
  bool isInPsc;
  final quant;
  bool isRatted;
  AllCard(
      {this.image,
      this.name,
      this.oldPrice,
      this.newPrice,
      this.offer,
      this.date,
      this.ratting,
      this.rattingPeople,
      this.isTapped,
      this.isInPsc,
      this.quant,
      this.isRatted});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.grey.withOpacity(0.7),
      child: Container(
        height: 320,
        width: 160,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            ImageCont(
              img: image,
            ),
            DiscountBanner(offer: offer),
            PdtName(name: name),
            isInPsc == true
                ? Psc()
                : Positioned(
                    top: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StarReview(
                          ratting: ratting,
                          rattingPeople: rattingPeople,
                          isRatted: isRatted,
                        ),
                        ReviewDropDown(),
                      ],
                    ),
                  ),
            OldPrice(oldPrice: oldPrice),
            NewPrice(newPriece: newPrice),
            isTapped == true ? CounterBtn() : AddBtn(),
          ],
        ),
      ),
    );
  }
}
