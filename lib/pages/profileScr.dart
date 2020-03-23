import 'package:flutter/material.dart';

class StuProfile extends StatefulWidget {
  @override
  _StuProfileState createState() => _StuProfileState();
}

class _StuProfileState extends State<StuProfile> {
  static int semNo = 2;
  static int yearNo = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Student Profile',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Ezaan1.jpg'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
              ),
            ),
            Text(
              'Ezaan Ali',
              style: TextStyle(
                  color: Colors.deepPurple,
                  letterSpacing: 3.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    'Student ID',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Section',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    '19K-1368',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        letterSpacing: 3.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'F',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        letterSpacing: 3.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Text(
                    'Semester',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Year',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    '$semNo',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        letterSpacing: 3.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '$yearNo',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        letterSpacing: 3.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              'University',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
              ),
            ),
            Text(
              'FAST NUCES',
              style: TextStyle(
                  color: Colors.deepPurple,
                  letterSpacing: 3.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5,),
                Text(
                  'k191368@nu.edu.pk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(width: 30,),
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5,),
                Text(
                    '0312-2075769',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 10.0,
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}