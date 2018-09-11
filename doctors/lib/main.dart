
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


import 'SplashScreen.dart';
import 'HomeScreen.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Doctors',
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.lightBlue,
          backgroundColor: Colors.white
      ),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new HomeScreen(),
      }
    );
  }
}


