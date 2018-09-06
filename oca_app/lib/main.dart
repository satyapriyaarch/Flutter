import 'package:flutter/material.dart';
import 'dart:async';
import 'package:oca_app/login.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: const Color(0xFFffc107),
        accentColor: const Color(0xFFffc107),
        canvasColor: const Color(0xFFfafafa),
        fontFamily: 'Roboto',
      ),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Login': (BuildContext context) => new LoginScreen(),
//        '/FSDashboard' : (BuildContext context) => new FSDashboard(),
//        '/SVDashboard' : (BuildContext context) => new FSDashboard(),
//        '/TVDashboard' : (BuildContext context) => new FSDashboard(),
//        '/IPDashboard' : (BuildContext context) => new FSDashboard(),
//        '/OCADashboard' : (BuildContext context) => new FSDashboard(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.all(0.0),
        child: new Image.asset(
          'images/yellow-pattern.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
