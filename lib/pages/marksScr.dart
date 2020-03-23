import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myid/CustomWidgets/subjectWidget.dart';

class Marks extends StatefulWidget {
  @override
  _MarksState createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Marks',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
      ),
      body:Column(
        children: <Widget>[
          SubjectWidget(),
        ],
      ),
    );
  }
}
