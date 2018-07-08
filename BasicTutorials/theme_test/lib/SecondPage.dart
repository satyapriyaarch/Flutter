import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: new Center(

        child: RaisedButton(onPressed: (){


          Navigator.popAndPushNamed(context, new ThirdScreen())
        },

          child: Text("GoBack"),
        ),

      ),


    );
  }

}

class ThirdScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: new Center(

        child: RaisedButton(onPressed: (){


          Navigator.pop(context);
        },

          child: Text("GoBack"),
        ),

      ),


    );
  }

}