import 'package:flutter/material.dart';

class NewPrice extends StatelessWidget {
  final newPriece;
  NewPrice({this.newPriece});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250,
          child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Text(
          '\Rs $newPriece',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
