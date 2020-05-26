import 'package:flutter/material.dart';
import 'package:miimarks/widgets/courses.dart';
import 'package:miimarks/widgets/charts.dart';

// stateful widget members need to be final,

class Marks extends StatefulWidget {
  Marks();

  @override
  _MarksState createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  _MarksState();

  @override
  Widget build(BuildContext context) {
    final dynamic dataStr = ModalRoute.of(context).settings.arguments;
    List<String> courses = [];
    List<String> coursesWithData = [];
    dataStr.forEach((course, value) {
      courses.add(course);
      if (!dataStr[course].isEmpty && dataStr[course] != null) coursesWithData.add(course);
    });

    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: <Widget>[
            SubjectWidget(courses),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: List.generate(coursesWithData.length, (index) {
                  String course = coursesWithData[index];

                  return Chart(dataStr[course]);
                }),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
