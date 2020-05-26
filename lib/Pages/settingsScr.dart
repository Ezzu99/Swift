import 'package:flutter/material.dart';
import 'package:miimarks/widgets/semesterDrawer.dart';

class SettingsScr extends StatefulWidget {
  @override
  _SettingsScrState createState() => _SettingsScrState();
}

class _SettingsScrState extends State<SettingsScr> {

  static int refresh = 10;
  var color = Colors.blue;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 5.0,
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          label: Text(
            'Refresh | $refresh',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: () {
            setState(() {
              refresh--;
              if (refresh == 0) {
                color = Colors.grey;
                color = Colors.blue;
                refresh = 10;
              }
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        endDrawer: SemesterDrawer(title: 'Choose Semester',),
      ),
    );
  }
}