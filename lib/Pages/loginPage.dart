import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:miimarks/Pages/loadingScr.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username;
  String password;

  Future<String> makePostRequest(String username, String password) async {
    String url = 'https://flex-scraper.herokuapp.com/api/marks';
    Map<String, String> headers = {"Content-type": "application/json"};
    String credentials = json.encode({"username": username, "password": password, "specialID": "NbIWPuI12mc4QNjN9bHP"}).toString();

    dynamic response = await http.post(url, headers: headers, body: credentials);

    String body = response.body;

    return body;
  }

  void getData () async {

    Navigator.pushReplacementNamed(context, '/loading');

    print('Sending Request!');

    var parsedJSON = json.decode(await makePostRequest(this.username.trim(), this.password.trim()));

    if (parsedJSON.containsKey('error')) {
      print(parsedJSON['error']);
      Navigator.pushReplacementNamed(context, '/login');
      this.showErrorMsg("ERROR MESSAGE");
    } else {
      print('Data Scraped!');
      Navigator.pushReplacementNamed(context, '/home', arguments: parsedJSON['data']['marksheet']);
    }

    return;
  }

  final _snackBarScaffold = GlobalKey<ScaffoldState>();

  void showErrorMsg(String message) {
    _snackBarScaffold.currentState.showSnackBar(new SnackBar(content: Text(message, style: TextStyle(color: Colors.red))));
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.blue, Colors.blue[200]],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey[900],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SWIFT',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w700,
                        //fontFamily: 'Pacifico', CUSTOM FONT NOT WORKING!
                        foreground: Paint()..shader = linearGradient
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                blurRadius: 10.0,
                                offset: Offset(0, 6)
                            )]
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextFormField(
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter your Student ID';
                                  }
                                  else return null;
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Student ID e.g.: 19K-1368",
                                    hintStyle: TextStyle(color: Colors.grey[600])
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[400],
                                ),
                                onChanged: (text) {
                                  this.username = text;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please enter your Password';
                                  }
                                  else return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[600])
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[400],
                                ),
                                onChanged: (text) {
                                  this.password = text;
                                },
                              ),
                            )],
                        ),
                      ),
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        getData();

                      }
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    icon: Icon(Icons.subdirectory_arrow_right, color: Colors.white,),
                    label: Text('Login', style: TextStyle(color: Colors.white),),
                    color: Colors.blue,
                  ),
              ])
            )
          )
        ),
      ),
    );
  }
}

//class SnackBarPage extends StatelessWidget {
//
//  final String msg;
//
//  SnackBarPage({this.msg = 'Incorrect Student Id or Password!'});
//
//  final snackBar = SnackBar(
//    content: Text(
//      'Incorrect Student Id or Password!',
//      style: TextStyle(
//        color: Colors.red,
//      ),
//    ),
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: RaisedButton(
//        onPressed: () {
//          // Find the Scaffold in the widget tree and use
//          // it to show a SnackBar.
//          Scaffold.of(context).showSnackBar(snackBar);
//        },
//        child: Text('Show SnackBar'),
//      ),
//    );
//  }
//}
