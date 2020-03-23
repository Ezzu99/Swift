import 'package:flutter/material.dart';
import 'package:myid/pages/profileScr.dart';
import 'package:myid/pages/loginPage.dart';
import 'package:myid/pages/marksScr.dart';
import 'package:myid/pages/attendanceScr.dart';
import 'package:myid/pages/loadingScr.dart';
import 'package:myid/pages/home.dart';

void main() => runApp(MaterialApp(
  title: 'Flex',
  initialRoute: '/login',
  routes: {
    '/login': (context) => LoginPage(),
    '/home': (context) => Home(),
    '/stuProfile': (context) => StuProfile(),
    '/marks': (context) => Marks(),
    '/attendance': (context) => Attendance(),
    '/loading': (context) => Loading(),
  },
));


