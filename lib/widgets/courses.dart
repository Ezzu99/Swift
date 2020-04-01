import 'package:flutter/material.dart';

class SubjectWidget extends StatelessWidget {
  final List<String> courses;
  SubjectWidget(this.courses);

  Widget courseContainer(String course, [bool isLast=false]) {
    return InkWell(
      onTap: () {
        print('$course');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blue[200]],
          )
        ),
        child: Center(
          child: Text(
            course.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w300
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40,),
        Container(
            height: 80,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.5),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              itemBuilder: (context, index) {
                return ListView(
                  children: <Widget>[this.courseContainer(courses[index])]
                );
              },
              itemCount: courses.length,
            ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Divider(
            height: 0,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
