// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './text.dart';
import './textControl.dart';
import 'orignalText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_tree_sharp),
          leadingWidth: 100,
          title: Text("Assignment One"),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(originalText),
            if (originalText != 'Text Changed Successfully')
              ChangeButton(changeText),
            if (originalText == 'Text Changed Successfully')
              OriginalTextBtn(restartText)
          ],
        ),
      ),
    );
  }
}


//First Assignment Done 