import 'package:flutter/material.dart';

class SubjectWidget extends StatefulWidget {
  final List<String> courses;
  SubjectWidget(this.courses);

  @override
  _SubjectWidgetState createState() => _SubjectWidgetState();
}

class _SubjectWidgetState extends State<SubjectWidget> {

  var color1 = Colors.grey[600];
  var color2 = Colors.grey[200];

  Widget courseContainer(String course, [bool isLast=false]) {
    return InkWell(
      onTap: () {
        print('$course');
        setState(() {
          color1 = Colors.blue;
          color2 = Colors.blue[200];
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [color1, color2],
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
                  children: <Widget>[this.courseContainer(widget.courses[index])]
                );
              },
              itemCount: widget.courses.length,
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
