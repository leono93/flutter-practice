import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import './random_words.dart';

void main() => runApp(MyApp());

/* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.pink[200]), home: RandomWords());
  }
} */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Totally legit Blizzard Armory'),
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
          new Center(
            child: new RaisedButton(
              onPressed: () {/*..*/},
              child: Text('Connect your Blizzard Account'),
            ),
          )
        ]),
      ),
    );
  }
}
