import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import '../descriptions/warlockDesc.dart';
import '../database/characterForm.dart';

const playerClass = 'warlock';
const className = 'Warlock';
const classDescription =
    'Warlocks burn and destroy weakened foes with a combination of crippling illnesses and dark magic. While their demon pets protect and enhance them, warlocks strike at their enemies from a distance. As physically weak spellcasters bereft of heavy armor, cunning warlocks allow their minions to take the brunt of enemy attacks in order to save their own skin.';
const spec1 = 'affliction';
const spec2 = 'demonology';
const spec3 = 'destruction';

class Warlock extends StatelessWidget {
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
                        color: Colors.indigo[400],
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
                              color: Colors.indigo[400],
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
                              color: Colors.indigo[400],
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
                              color: Colors.indigo[400],
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
                    MaterialPageRoute(builder: (context) => WarlockDesc()),
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
