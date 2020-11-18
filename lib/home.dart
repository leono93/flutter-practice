import 'package:flutter/material.dart';
import './classes/warrior.dart';
import './classes/paladin.dart';
import './classes/hunter.dart';
import './classes/rogue.dart';
import './classes/priest.dart';
import './classes/shaman.dart';
import './classes/mage.dart';
import './classes/warlock.dart';
import './classes/monk.dart';
import './classes/demonhunter.dart';
import './classes/druid.dart';
import './classes/deathknight.dart';
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
                        MaterialPageRoute(builder: (context) => Warrior()),
                      );
                    },
                    icon: Image.asset("assets/warrioricon.png"),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Paladin()),
                        );
                      },
                      icon: Image.asset("assets/paladinicon.png")),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hunter()),
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
                        MaterialPageRoute(builder: (context) => Rogue()),
                      );
                    },
                    icon: Image.asset("assets/rogueicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Priest()),
                      );
                    },
                    icon: Image.asset("assets/priesticon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shaman()),
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
                        MaterialPageRoute(builder: (context) => Mage()),
                      );
                    },
                    icon: Image.asset("assets/mageicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Warlock()),
                      );
                    },
                    icon: Image.asset("assets/warlockicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Monk()),
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
                        MaterialPageRoute(builder: (context) => DemonHunter()),
                      );
                    },
                    icon: Image.asset("assets/dhicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Druid()),
                      );
                    },
                    icon: Image.asset("assets/druidicon.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeathKnight()),
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
                    child: Text("SEARCH",
                        style: TextStyle(
                            color: Color(0xffc3c4c7),
                            fontSize: 14.0,
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
                    child: Text("CHARACTERS",
                        style: TextStyle(
                            color: Color(0xffc3c4c7),
                            fontSize: 14.0,
                            fontFamily: 'MORPHEUS',
                            fontWeight: FontWeight.bold)),
                  )),
            ])),
      ]),
    );
  }
}
