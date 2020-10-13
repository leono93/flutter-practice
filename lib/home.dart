import 'package:flutter/material.dart';
import './homeroute.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Totally legit Blizzard Armory',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[200],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.5, 0.4),
          child: new RaisedButton(
            onPressed: () {/*..*/},
            child: Text(
              'Connect your Blizzard Account',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ),
        new Container(
            alignment: FractionalOffset(0.5, 0.6),
            child: new RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeRoute()),
                );
              },
              child: Text(
                'Continue without',
                style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
              ),
            ))
      ]),
    );
  }
}
