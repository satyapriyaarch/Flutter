import 'package:flutter/material.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: EdgeInsets.all(100.0),
       child: new Column(
         children: <Widget>[
           new Image.network(
             'https://oscar.ofm.co.za/img/fr_20173116130.png',
             fit: BoxFit.fill,
             width: 200.0,
             height: 150.0,
           ),
           new Text("Dr. Mukesh Sharma"),
         ],
         mainAxisAlignment: MainAxisAlignment.center,

       ) ,


      ),
    );
  }
}
