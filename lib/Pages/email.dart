import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Email',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 5.0,
        ),
      ),
    );
  }
}

