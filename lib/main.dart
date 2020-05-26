import 'package:flutter/material.dart';
import 'package:miimarks/Pages/email.dart';
import 'package:miimarks/Pages/settingsScr.dart';
import 'package:miimarks/pages/loginPage.dart';
import 'package:miimarks/pages/marksScr.dart';
import 'package:miimarks/pages/attendanceScr.dart';
import 'package:miimarks/pages/loadingScr.dart';
import 'package:miimarks/pages/home.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Swift',
  initialRoute: '/login',
  routes: {
    '/login': (context) => LoginPage(),
    '/home': (context) => Home(),
    '/settingsScr': (context) => SettingsScr(),
    '/marks': (context) => Marks(),
    '/email': (context) => Email(),
    '/attendance': (context) => Attendance(),
    '/loading': (context) => Loading(),
  },
));

// This is code on my branch :login-system

