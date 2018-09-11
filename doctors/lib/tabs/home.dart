import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Padding(
            child: new Row(
              children: <Widget>[
                Container(
                  child: new Image.network(
                    'https://images1-fabric.practo.com/doctor/454518/dr-satish-s-andani-58e388502e2b8.jpg',
                    height: 70.0,
                  ),
                ),
                Container(
                    child: new Column(
                  children: <Widget>[
                    new Text("Dr Sathish S Andani"),
                    new Text("Dr Sathish S Andani"),
                  ],
                )),
              ],
            ),
            padding: EdgeInsets.all(10.0),
          ),

//                    Image.network(
//                  'https://images1-fabric.practo.com/doctor/454518/dr-satish-s-andani-58e388502e2b8.jpg',
//                  height: 70.0,
//                ),
//                title: new Text('Profile'),
//                onTap: () {}),
//          ),
//          new Divider(),
          new Text('Home tab content')
        ],
      ));
}
