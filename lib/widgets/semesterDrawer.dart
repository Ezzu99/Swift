import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SemesterDrawer extends StatelessWidget {

  final String title;
  final Function onTap;

  SemesterDrawer({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10.0,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10.0,
                            offset: Offset(0, 6)
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[400]
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Fall 2019');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                          'Fall 2019',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider (
                    color: Colors.grey[500],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Spring 2020');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Spring 2020',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider (
                    color: Colors.grey[500],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Fall 2021');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Fall 2021',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider (
                    color: Colors.grey[500],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Spring 2021');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Spring 2021',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider (
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
