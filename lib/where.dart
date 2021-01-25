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
      home: WherePage(),
    );
  }
}

class WherePage extends StatefulWidget {
  WherePage_ createState() => WherePage_();
}

// ignore: camel_case_types
class WherePage_ extends State<WherePage> {
  Widget horizontalSection = new Center(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 1,
          child: new Image.asset(
            'images/depositphot1.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 1,
          child: new Image.asset(
            'images/depositphot2.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 1,
          child: new Image.asset(
            'images/depositphot3.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.0,
          ),
          horizontalSection,
        ],
      ),
    );
  }
}
