import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  int mobile,passwrod;
  TextEditingController _mobiletf = new TextEditingController();
  TextEditingController _passwordtf = new TextEditingController();

  void setAdmin()
  {
    _mobiletf.text = '7680954215';
    _passwordtf.text = 'pass#1234';
  }
  void setLoginAsAdmin()
  {
    this.setState(()
        {
          mobile = int.parse(_mobiletf.text);

        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("OCA - Login"),
      ),
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              new Image.network(
                'https://echalk-slate-prod.s3.amazonaws.com/private/groups/52137/resources/545eff55-e428-4b2b-a148-cc034db2522e?AWSAccessKeyId=AKIAJSZKIBPXGFLSZTYQ&Expires=1812369046&response-cache-control=private%2C%20max-age%3D31536000&response-content-disposition=attachment%3Bfilename%3D%22login.png%22&response-content-type=image%2Fpng&Signature=APg%2F7E6eNSWVSAkn88g9mYP7%2BvI%3D',
                fit: BoxFit.fill,
                width: 75.0,
                height: 75.0,
              ),
              new RaisedButton.icon(onPressed: setAdmin, icon: const Icon(Icons.message), label: new Text("Admin")),
              new Padding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              ),
              new Container(
                width: 500.0,
                height: 355.0,
                color: Colors.yellow,
                child: new Card(
                  margin: EdgeInsets.all(0.0),
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                      new Text(
                        'WelCome Back !',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
//                      new Padding(
//                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
                      new Text(
                        'Enter your Mobile number & Password',
                        style: new TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16.0),
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0)),
                      new TextField(
                        controller: _mobiletf,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          hintText: "Enter Mobile number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            gapPadding: 5.0
                          ),
                        ),
                      ),
                      new Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                      new TextField(
                        obscureText: true,
                        controller: _passwordtf,
                        decoration: InputDecoration(
                          icon: Icon(Icons.play_arrow),
                          hintText: "Enter Password",

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                              gapPadding: 5.0
                          ),
                        ),
                      ),
                      new Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                      new RaisedButton.icon(
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                          icon: const Icon(Icons.lock_open, size: 18.0),
                          textColor: Colors.white,
                          label: const Text("Login"))
                    ],
                  ),
                ),
              ),
            ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/white-pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
