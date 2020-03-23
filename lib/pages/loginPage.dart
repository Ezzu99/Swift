import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController studentIDController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future<String> makePostRequest(String studentID, String password) async {
    String url = 'https://flex-scraper.herokuapp.com/api/marks';
    Map<String, String> headers = {"Content-type": "application/json"};
    String credentials = json.encode({"username": studentID, "password": password}).toString();

    dynamic response = await http.post(url, headers: headers, body: credentials);

    int statusCode = response.statusCode;
    String body = response.body;

    return body;
  }

  void getData (String studentID, String password) async {

    print('Scraping Data!');
    Navigator.pushNamed(context, '/loading');
    var parsedJSON = json.decode(await makePostRequest(studentID.trim(), password.trim()));
    if (parsedJSON.containsKey('error')) {
      print(parsedJSON['error']);
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Marks(parsedJSON['data']['marksheet']),
      ));
    }
    print('Data Scraped!');
    Navigator.pushReplacementNamed(context, '/home');

  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[900],
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Student ID',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: Material(
                    elevation: 5,
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: TextFormField(
                      controller: studentIDController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter your Student ID';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: '99K-9999',
                        border: InputBorder.none,
                        fillColor: Colors.grey[850],
                        filled: true,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: Material(
                    elevation: 5,
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.grey[850],
                        filled: true,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                RaisedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      getData(studentIDController.text, passwordController.text);
                    }
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.subdirectory_arrow_right, color: Colors.grey[400],),
                  label: Text('Login', style: TextStyle(color: Colors.grey[400]),),
                  color: Colors.grey[800],
                ),
                SizedBox(height: 30,),
                Container(
                  child: ,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
