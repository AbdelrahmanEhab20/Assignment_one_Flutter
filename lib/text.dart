import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String originalText;

  MyText(this.originalText);
  @override
  Widget build(BuildContext context) {
    return Text(originalText,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 36));
  }
}
