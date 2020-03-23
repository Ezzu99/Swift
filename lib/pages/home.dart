import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(70, 200, 70, 200),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[850],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton.icon(
                      elevation: 5,
                      onPressed: () {
                        Navigator.pushNamed(context, '/stuProfile');
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      icon: Icon(Icons.account_circle, color: Colors.grey[400],),
                      label: Text('Student Profile', style: TextStyle(color: Colors.grey[400]),),
                      color: Colors.grey[800],
                    ),
                    RaisedButton.icon(
                      elevation: 5,
                      onPressed: () {
                        Navigator.pushNamed(context, '/marks');
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      icon: Icon(Icons.assignment, color: Colors.grey[400],),
                      label: Text('Marks', style: TextStyle(color: Colors.grey[400]),),
                      color: Colors.grey[800],
                    ),
                    RaisedButton.icon(
                      elevation: 5,
                      onPressed: () {
                        Navigator.pushNamed(context, '/attendance');
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      icon: Icon(Icons.content_paste, color: Colors.grey[400],),
                      label: Text('Attendance', style: TextStyle(color: Colors.grey[400]),),
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
