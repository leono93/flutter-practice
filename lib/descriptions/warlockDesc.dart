import 'package:flutter/material.dart';
import "../classes/warlock.dart";
import 'package:bordered_text/bordered_text.dart';

class WarlockDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$playerClass.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: FractionalOffset(0.5, 0.1),
            child: Text('$className',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'MORPHEUS',
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[400],
                    shadows: [
                      Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0))
                    ]))),
        Align(
            alignment: FractionalOffset(0.5, 0.25),
            child: Padding(
                padding: EdgeInsets.all(30.0),
                child: BorderedText(
                    strokeWidth: 1.8,
                    strokeColor: Colors.black,
                    child: Text('$classDescription',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffe0e0e0),
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0))
                            ]))))),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
