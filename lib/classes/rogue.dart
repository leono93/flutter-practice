import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import '../descriptions/rogueDesc.dart';
import '../database/characterForm.dart';

const playerClass = 'rogue';
const className = 'Rogue';
const classDescription =
    'Rogues often initiate combat with a surprise attack from the shadows, leading with vicious melee strikes. When in protracted battles, they utilize a successive combination of carefully chosen attacks to soften the enemy up for a killing blow. Rogues must take special care when selecting targets so that their combo attacks are not wasted, and they must be conscious of when to hide or flee if a battle turns against them.';
const spec1 = 'assassination';
const spec2 = 'outlaw';
const spec3 = 'subtlety';

class Rogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$playerClass.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: FractionalOffset(0.5, 0.1),
            child: BorderedText(
                strokeWidth: 1.8,
                strokeColor: Colors.black,
                child: Text('$className',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'MORPHEUS',
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[300],
                        shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0))
                        ])))),
        Align(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Color(0xff9c9c9c).withOpacity(0.3),
              child: Align(
                  child: BorderedText(
                      strokeWidth: 2.0,
                      strokeColor: Colors.black,
                      child: Text('$className 1',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.yellow[300],
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    blurRadius: 9.0,
                                    color: Colors.black,
                                    offset: Offset(5.0, 5.0))
                              ])))),
            ),
            Container(
                height: 50,
                color: Color(0xff9c9c9c).withOpacity(0.3),
                child: Align(
                  child: BorderedText(
                      strokeWidth: 2.0,
                      strokeColor: Colors.black,
                      child: Text('$className 2',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.yellow[300],
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    blurRadius: 9.0,
                                    color: Colors.black,
                                    offset: Offset(5.0, 5.0))
                              ]))),
                )),
            Container(
              height: 50,
              color: Color(0xff9c9c9c).withOpacity(0.3),
              child: Align(
                  child: BorderedText(
                      strokeWidth: 2.0,
                      strokeColor: Colors.black,
                      child: Text('$className 3',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.yellow[300],
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    blurRadius: 9.0,
                                    color: Colors.black,
                                    offset: Offset(5.0, 5.0))
                              ])))),
            ),
          ],
        ))),
        Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Class Selection',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          alignment: FractionalOffset(0.5, 0.995),
          child: ButtonTheme(
              minWidth: 30,
              height: 36,
              buttonColor: Color(0xffe0e0e0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RogueDesc()),
                  );
                },
                child: Text(
                  'ⓘ',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'MORPHEUS',
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Container(
          alignment: FractionalOffset(0.95, 0.995),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CharacterForm()),
              );
            },
            child: Text(
              'Add Character',
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
