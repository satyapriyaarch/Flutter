import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget
{
  final String title;
  final double barHeight = 66.0;
  final double statusBarHeight = 20.0;
  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height:  barHeight + statusBarHeight,
      padding: new EdgeInsets.only(top: statusBarHeight),
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
        ),
      ),
      child: new Center(

        child: Text(
          title,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 36.0

            )
        ),
      )

    );


  }


}
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//    // Here we take the value from the MyHomePage object that was created by
//    // the App.build method, and use it to set our appbar title.
//    title: new Text(widget.title),
//      ),
      body: new Column(
        children: <Widget>[

          new GradientAppBar('Planets'),
        ],

      ),


    );
  }
}



