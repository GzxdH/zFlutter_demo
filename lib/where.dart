import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// void main() => runApp(new WhereApp());

// ignore: must_be_immutable
class WhereApp extends StatelessWidget {
  // ignore: slash_for_doc_comments
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TOT',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
