import 'package:flutter/material.dart';

class Warrior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warrior',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/warrior.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Paladin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Paladin',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/paladin.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Hunter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hunter',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[700],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/hunter.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Rogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rogue',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[300],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/rogue.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Priest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Priest',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/priest.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Shaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shaman',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/shaman.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Mage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mage',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/mage.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Warlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warlock',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/warlock.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Monk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monk',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/monk.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class DemonHunter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demon Hunter',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/demonhunter.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class Druid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Druid',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/druid.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}

class DeathKnight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Death Knight',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/deathknight.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Return to class selection',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ),
      ]),
    );
  }
}
