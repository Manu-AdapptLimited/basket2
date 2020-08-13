
import 'package:flutter/material.dart';
import 'Widget/Widgets.dart';

class DeliveryAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28,
            ),
            onPressed: () {}),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(104, 159, 57, 0.9),
        title: Text('Choose Delivery Address',
            style: TextStyle(
              fontSize: 18,
            )),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              children: [
                AddSearch(),
                Divider(color:Color.fromRGBO(104, 159, 57, 0.9),
                thickness: 2.0,
                ),
                LocationBtn(),
                

              ],
            ),
          ),
        );
      }),
    );
  }
}
