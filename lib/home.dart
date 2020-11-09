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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/main.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            alignment: FractionalOffset(0.0, 0.1),
          ))),
          new Container(
              alignment: FractionalOffset(0.0, 0.45),
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
          new Container(
              alignment: FractionalOffset(0.0, 0.6),
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
          new Container(
              alignment: FractionalOffset(0.0, 0.75),
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
          new Container(
              alignment: FractionalOffset(0.0, 0.9),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DemonHunter()),
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
                          MaterialPageRoute(
                              builder: (context) => DeathKnight()),
                        );
                      },
                      icon: Image.asset("assets/dkicon.png"),
                    ),
                  ])),
        ]),
        bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("I am"),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("a button"),
                ),
              ],
            )));
  }
}
