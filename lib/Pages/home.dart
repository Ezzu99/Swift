import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miimarks/widgets/semesterDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool noNotification = true;
  int currentTab;

  @override
  Widget build(BuildContext context) {
    final dynamic dataStr = ModalRoute.of(context).settings.arguments;

    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  decoration: new BoxDecoration(
                    color: Colors.grey[850],
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, .1),
                          offset: Offset(0, 4)
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Text(
                    'Hi, Azan Ali!',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 70,
                      decoration: new BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue[200]]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, .15),
                              blurRadius: 10.0,
                              offset: Offset(3, 6)
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'CL217',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'Marks updated!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 70,
                      decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.blue[200]]
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .15),
                                blurRadius: 10.0,
                                offset: Offset(3, 6)
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'EE227',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'Attendance updated!',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 70,
                      decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.blue[200]]
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .15),
                                blurRadius: 10.0,
                                offset: Offset(3, 6)
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'k191454@nu.edu.pk',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'Hello bro! How are you?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Padding(
//        padding: const EdgeInsets.fromLTRB(70, 200, 70, 200),
//        child: Material(
//          elevation: 5,
//          borderRadius: BorderRadius.all(Radius.circular(10)),
//          color: Colors.grey[850],
//          child: Center(
//            child: Padding(
//              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//              child: Container(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton.icon(
//                      elevation: 5,
//                      onPressed: () {
//                        Navigator.pushNamed(context, '/stuProfile');
//                      },
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//                      icon: Icon(Icons.account_circle, color: Colors.grey[400],),
//                      label: Text('Student Profile', style: TextStyle(color: Colors.grey[400]),),
//                      color: Colors.grey[800],
//                    ),
//                    RaisedButton.icon(
//                      elevation: 5,
//                      onPressed: () {
//                        Navigator.pushNamed(context, '/marks', arguments: dataStr);
//                      },
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//                      icon: Icon(Icons.assignment, color: Colors.grey[400],),
//                      label: Text('Marks', style: TextStyle(color: Colors.grey[400]),),
//                      color: Colors.grey[800],
//                    ),
//                    RaisedButton.icon(
//                      elevation: 5,
//                      onPressed: () {
//                        Navigator.pushNamed(context, '/attendance');
//                      },
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//                      icon: Icon(Icons.content_paste, color: Colors.grey[400],),
//                      label: Text('Attendance', style: TextStyle(color: Colors.grey[400]),),
//                      color: Colors.grey[800],
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.power_settings_new),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentTab = 0;
                            Navigator.pushNamed(context, '/marks', arguments: dataStr);
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.assignment,
                              color: Colors.grey,
                            ),
                            Text(
                              'Marks',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentTab = 1;
                            Navigator.pushNamed(context, '/attendance');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.check_circle,
                              color: Colors.grey,
                            ),
                            Text(
                              'Attendance',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Container()
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.alternate_email,
                              color: Colors.grey,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentTab = 3;
                            Navigator.pushNamed(context, '/settingsScr');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.settings,
                              color: Colors.grey,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          color: Colors.grey[850],
        ),
      ),
    );
  }
}