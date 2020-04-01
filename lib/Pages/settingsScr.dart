import 'package:flutter/material.dart';
import 'package:miimarks/widgets/semesterDrawer.dart';

class SettingsScr extends StatefulWidget {
  @override
  _SettingsScrState createState() => _SettingsScrState();
}

class _SettingsScrState extends State<SettingsScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}