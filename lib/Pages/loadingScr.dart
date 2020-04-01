import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitCubeGrid (
              color: Colors.grey[400],
              size: 50.0,
            ),
            SizedBox(height: 30,),
            Text(
              'Logging in',
              style: TextStyle(color: Colors.grey[400]),
            )
          ],
        ),
      ),
    );
  }
}
