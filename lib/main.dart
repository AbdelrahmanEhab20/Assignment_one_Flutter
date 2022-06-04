// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './text.dart';
import './textcontrol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String originalText = 'Original Text , For The Assignment One';

  void changeText() {
    setState(() {
      originalText = 'Text Changed Successfully';
    });
  }

  void restartText() {
    setState(() {
      originalText = 'Original Text , For The Assignment One';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_box),
          leadingWidth: 100,
          title: Text("Assignment One"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[700],
        ),
        body: Column(
          children: [
            MyText(originalText),
            MyButton(changeText),
            OutlinedButton(
              child: Text("Restart Text",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              onPressed: restartText,
              style: OutlinedButton.styleFrom(
                  primary: Colors.green, side: BorderSide(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
