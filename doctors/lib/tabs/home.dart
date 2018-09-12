import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            child: new Row(
              children: <Widget>[
                Padding(
                  child: new ClipOval(
                    child: new Image.network(
                      'https://images1-fabric.practo.com/doctor/454518/dr-satish-s-andani-58e388502e2b8.jpg',
                      height: 70.0,
                    ),

                  ),
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                    child: new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text(
                      "Dr Sathish S Andani",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      "MBBS, DCH, PALS, PGPN (Boston)",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ],
            ),
            padding: EdgeInsets.all(0.0),
          ),
          new Divider(
            height: 5.0,
            color: Colors.blueGrey,
          ),
          new Container(
              child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Consultation Fees:",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              new Text(
                "300",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
            ],
          ),
          ),
          new Divider(
            height: 5.0,
            color: Colors.blueGrey,
          ),
        ],
      ));
}
