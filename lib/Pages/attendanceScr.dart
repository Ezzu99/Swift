import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Attendance',
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
