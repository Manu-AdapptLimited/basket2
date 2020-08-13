import 'package:flutter/material.dart';

import 'Widgets/AllCard.dart';

class SavedForLater extends StatefulWidget {
  @override
  _SavedForLaterState createState() => _SavedForLaterState();
}

class _SavedForLaterState extends State<SavedForLater> {
  var pdts = [
    {
      "image": "assets/images/6.png",
      "name": "bb Royal-Organic-Flex Seed",
      "oldPrice": "300",
      "newPrice": "250",
      "offer": "23%",
      "isTapped": false,
      "date": "18-Apr-2020",
      "ratting": "3.4",
      "rattingPeople": "1268",
      "isInPsc": true,
      "isRatted": false
    },
    {
      "image": "assets/images/5.webp",
      "name": "Kachi Ghani Food Oil",
      "oldPrice": "150",
      "newPrice": "125",
      "offer": "20%",
      "isTapped": true,
      "date": "18-Apr-2020",
      "ratting": "4.2",
      "rattingPeople": "1526",
      "isInPsc": false,
      "isRatted": true
    },
    {
      "image": "assets/images/3.jpg",
      "name": "Dishwash Liquid Gel ",
      "oldPrice": "100",
      "newPrice": "90",
      "offer": "10%",
      "isTapped": false,
      "date": "18-Apr-2020",
      "ratting": "4.0",
      "rattingPeople": "5268",
      "isInPsc": false,
      "isRatted": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 5),

        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              height: 25,
              child: Text(
                'Saved For Later',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pdts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AllCard(
                      image: pdts[index]['image'],
                      name: pdts[index]['name'],
                      oldPrice: pdts[index]['oldPrice'],
                      newPrice: pdts[index]['newPrice'],
                      offer: pdts[index]['offer'],
                      isTapped: pdts[index]['isTapped'],
                      date: pdts[index]['date'],
                      ratting: pdts[index]['ratting'],
                      rattingPeople: pdts[index]['rattingPeople'],
                      isInPsc: pdts[index]['isInPsc'],
                      quant: pdts[index]['quant'],
                      isRatted: pdts[index]['isRatted'],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
