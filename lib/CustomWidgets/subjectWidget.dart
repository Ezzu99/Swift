import 'package:flutter/material.dart';

class SubjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Container(
            height: 80,
            child: PageView(
              controller: PageController(viewportFraction: 0.8),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('Hello');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[300],
                      child: Center(
                        child: Text(
                          'Oop',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Hello');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[300],
                      child: Center(
                        child: Text(
                          'DLD',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Hello');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[300],
                      child: Center(
                        child: Text(
                          'CPS',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Hello');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[300],
                      child: Center(
                        child: Text(
                          'PST',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Divider(
            height: 50.0,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
