import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  final Function _changeFunction;

  ChangeButton(this._changeFunction);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: OutlinedButton(
        child: Text("Change Text",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 152, 25, 114),
                fontSize: 26)),
        onPressed: _changeFunction,
        style: OutlinedButton.styleFrom(
            primary: Colors.black,
            side: BorderSide(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
      ),
    );
  }
}
