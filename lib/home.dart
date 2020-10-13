import 'package:flutter/material.dart';
import './homeroutes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose your class',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/main.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
            alignment: FractionalOffset(0.00, 0.2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Warrior()),
                      );
                    },
                    child: Text('Warrior'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Paladin()),
                      );
                    },
                    child: Text('Paladin'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hunter()),
                      );
                    },
                    child: Text('Hunter'),
                  )
                ])),
        new Container(
            alignment: FractionalOffset(0.00, 0.4),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rogue()),
                      );
                    },
                    child: Text('Rogue'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Priest()),
                      );
                    },
                    child: Text('Priest'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shaman()),
                      );
                    },
                    child: Text('Shaman'),
                  )
                ])),
        new Container(
            alignment: FractionalOffset(0.00, 0.6),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mage()),
                      );
                    },
                    child: Text('Mage'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Warlock()),
                      );
                    },
                    child: Text('Warlock'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Monk()),
                      );
                    },
                    child: Text('Monk'),
                  )
                ])),
        new Container(
            alignment: FractionalOffset(0.00, 0.8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DemonHunter()),
                      );
                    },
                    child: Text('Demon Hunter'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Druid()),
                      );
                    },
                    child: Text('Druid'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeathKnight()),
                      );
                    },
                    child: Text('Death Knight'),
                  ),
                ])),
      ]),
    );
  }
}
