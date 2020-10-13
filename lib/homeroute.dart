import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome! You are not logged in',
          style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
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
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to home page',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ),
      ]),
    );
  }
}
