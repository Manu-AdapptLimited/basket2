import 'package:flutter/material.dart';
import 'Edit.dart';

class EditAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text('Edit Address',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               PersonDetails(),
               AddressDetails()

               
                
              ],
            ),
          ),
        );
      }),
    );
  }
}
