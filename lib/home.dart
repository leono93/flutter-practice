import 'package:flutter/material.dart';
import './descriptions/warriorDesc.dart';
import './descriptions/paladinDesc.dart';
import './descriptions/hunterDesc.dart';
import './descriptions/rogueDesc.dart';
import './descriptions/priestDesc.dart';
import './descriptions/shamanDesc.dart';
import './descriptions/mageDesc.dart';
import './descriptions/warlockDesc.dart';
import './descriptions/monkDesc.dart';
import './descriptions/dhDesc.dart';
import './descriptions/druidDesc.dart';
import './descriptions/dkDesc.dart';
import './realms.dart';
import './database/characterList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/character_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/main.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/logo.png"),
          alignment: FractionalOffset(0.0, 0.1),
        ))),
        Container(
            alignment: FractionalOffset(0.0, 0.43),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WarriorDesc()),
                      );
                    },
                    icon: Image.asset("assets/warrioricon.png"),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaladinDesc()),
                        );
                      },
                      icon: Image.asset("assets/paladinicon.png")),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HunterDesc()),
                      );
                    },
                    icon: Image.asset("assets/huntericon.png"),
                  )
                ])),
        Container(
            alignment: FractionalOffset(0.0, 0.58),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RogueDesc()),
                      );
                    },
                    icon: Image.asset("assets/rogueicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PriestDesc()),
                      );
                    },
                    icon: Image.asset("assets/priesticon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShamanDesc()),
                      );
                    },
                    icon: Image.asset("assets/shamanicon.png"),
                  )
                ])),
        Container(
            alignment: FractionalOffset(0.0, 0.73),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MageDesc()),
                      );
                    },
                    icon: Image.asset("assets/mageicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WarlockDesc()),
                      );
                    },
                    icon: Image.asset("assets/warlockicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MonkDesc()),
                      );
                    },
                    icon: Image.asset("assets/monkicon.png"),
                  )
                ])),
        Container(
            alignment: FractionalOffset(0.0, 0.88),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DemonHunterDesc()),
                      );
                    },
                    icon: Image.asset("assets/dhicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DruidDesc()),
                      );
                    },
                    icon: Image.asset("assets/druidicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeathKnightDesc()),
                      );
                    },
                    icon: Image.asset("assets/dkicon.png"),
                  ),
                ])),
        Container(
            alignment: FractionalOffset(0.0, 0.99),
            child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              SizedBox(
                  height: 30.0,
                  width: 180.0,
                  child: RaisedButton(
                    color: Colors.black.withOpacity(0.2),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CharacterField()),
                      );
                    },
                    child: Text("Search",
                        style: TextStyle(
                            color: Color(0xffebebeb).withOpacity(0.9),
                            fontSize: 17.0,
                            fontFamily: 'MORPHEUS',
                            fontWeight: FontWeight.bold)),
                  )),
              SizedBox(
                  height: 30.0,
                  width: 180.0,
                  child: RaisedButton(
                    color: Colors.black.withOpacity(0.2),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CharacterList()),
                      );
                    },
                    child: Text("Characters",
                        style: TextStyle(
                            color: Color(0xffebebeb).withOpacity(0.9),
                            fontSize: 17.0,
                            fontFamily: 'MORPHEUS',
                            fontWeight: FontWeight.bold)),
                  )),
            ])),
      ]),
    );
  }
}
