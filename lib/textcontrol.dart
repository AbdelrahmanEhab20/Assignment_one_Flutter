import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function _changeFunction;

  MyButton(this._changeFunction);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text("Change Text",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22)),
      onPressed: _changeFunction,
      style:
          OutlinedButton.styleFrom(primary: Colors.black, side: BorderSide()),
    );
  }
}
