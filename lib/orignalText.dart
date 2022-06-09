import 'package:flutter/material.dart';

class OriginalTextBtn extends StatelessWidget {
  final Function _changeFunction;

  OriginalTextBtn(this._changeFunction);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: OutlinedButton(
        child: Text("Original Text",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 26)),
        onPressed: _changeFunction,
        style: OutlinedButton.styleFrom(
            primary: Colors.green,
            side: BorderSide(color: Colors.black),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
      ),
    );
  }
}
